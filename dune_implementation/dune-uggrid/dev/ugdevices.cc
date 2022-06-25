// -*- tab-width: 4; indent-tabs-mode: nil; c-basic-offset: 2 -*-
// vi: set et ts=4 sw=2 sts=2:
/****************************************************************************/
/*                                                                          */
/* File:      ugdevices.c                                                   */
/*                                                                          */
/* Purpose:   Initialization and hardware independent part of devices       */
/*                                                                          */
/* Author:    Peter Bastian/Klaus Johannsen                                 */
/*            Institut fuer Computeranwendungen III                         */
/*            Universitaet Stuttgart                                        */
/*            Pfaffenwaldring 27                                            */
/*            70569 Stuttgart                                               */
/* email:     ug@ica3.uni-stuttgart.de                                      */
/*                                                                          */
/* History:   29.01.92 begin, ug version 2.0                                */
/*                                                                          */
/* Remarks:   was "devices.c" in earlier versions of UG                     */
/*                                                                          */
/****************************************************************************/

/****************************************************************************/
/*                                                                          */
/* include files                                                            */
/*			  system include files											*/
/*			  application include files                                                                     */
/*                                                                          */
/****************************************************************************/

#include <config.h>
#include <cstdlib>
#include <cstring>
#include <cstdio>
#include <stdarg.h>
#include <cassert>

/* low module */
#include "ugtypes.h"
#include "fileopen.h"
#include "misc.h"
#include "ugenv.h"
#include "defaults.h"
#include "debug.h"
#include "ugstruct.h"
#include "general.h"

/* dev module */
#include <dev/ugdevices.h>

#include "namespace.h"

/* dddif module */
#ifdef ModelP
#include "ppif.h"
using namespace PPIF;
#endif

USING_UG_NAMESPACE

/****************************************************************************/
/*																			*/
/* definition of variables global to this source file only (static!)		*/
/*																			*/
/****************************************************************************/

/* the mute level is set by the MuteCommand and used for output control.
   convention: 0 is default, <0 produces less output, >0 produces more output.
   The default is -1001, which equals total silence. */
static INT mutelevel=-1001;

static FILE *logFile=NULL;                                              /* log file pointer             */

/****************************************************************************/
/*D
   OpenLogFile - open a log file

   SYNOPSIS:
   INT OpenLogFile (const char *name, int rename);

   PARAMETERS:
   .  name -
   .  rename -

   DESCRIPTION:
   This function opens a log file where all output to 'UserWrite', 'UserWriteF'
   and 'PrintErrorMessage' is protocoled.

   RETURN VALUE:
   INT
   .n    0 if operation ok
   .n    1 if a file is already open
   .n    2 if file open failed.
   D*/
/****************************************************************************/

INT NS_PREFIX OpenLogFile (const char *name, int rename)
{
  char logpath[BUFFSIZE];

  if (logFile!=NULL) return(1);

  /* get path to logfile directory */
  if (GetDefaultValue(DEFAULTSFILENAME,"logfilesdir",logpath)==0)
    logFile = FileOpenUsingSearchPath_r(name,"w",logpath,rename);
  else
    logFile = fileopen_r(name,"w",rename);

  if (logFile==NULL) return(2);

  return(0);
}

/****************************************************************************/
/*D
   CloseLogFile	- Close log file

   SYNOPSIS:
   INT CloseLogFile (void);

   PARAMETERS:
   .  void

   DESCRIPTION:
   This function closes the log file.

   RETURN VALUE:
   INT
   .n    0 if operation ok
   .n    1 if an error occured.
   D*/
/****************************************************************************/

INT NS_PREFIX CloseLogFile (void)
{
  if (logFile==NULL) return(1);

  fclose(logFile);
  logFile = NULL;
  return(0);
}

/****************************************************************************/
/*D
   SetLogFile - set log file ptr

   SYNOPSIS:
   INT SetLogFile (FILE *file);

   PARAMETERS:
   .  file -

   DESCRIPTION:
   This function et log file ptr.

   RETURN VALUE:
   INT
   .n    0 if operation ok
   .n    1 if an error occured.
   D*/
/****************************************************************************/

INT NS_PREFIX SetLogFile (FILE *file)
{
  logFile = file;
  return(0);
}

/****************************************************************************/
/*D
   WriteLogFile	- Write to (open) log file

   SYNOPSIS:
   INT WriteLogFile (const char *text);

   PARAMETERS:
   .  text -

   DESCRIPTION:
   This function writes to (open) log file.

   RETURN VALUE:
   INT
   .n    0 if operation ok
   .n    1 if error occured.
   D*/
/****************************************************************************/

INT NS_PREFIX WriteLogFile (const char *text)
{
  if (logFile==NULL) return(1);

  if ( fputs(text,logFile) < 0 )
  {
    UserWrite( "ERROR in writing logfile\n" );
                #ifdef Debug
    printf( "ERROR in writing logfile\n" );
    fflush(logFile);
                #endif
    return 1;
  }
        #ifdef Debug
  fflush(logFile);
        #endif

  return(0);
}

/****************************************************************************/
/*D
   UserWrite - Write a string to shell window

   SYNOPSIS:
   void UserWrite (const char *s);

   PARAMETERS:
   .  s -

   DESCRIPTION:
   This function writes a string to shell window with log file mechanism.

   RETURN VALUE:
   void
   D*/
/****************************************************************************/

void NS_PREFIX UserWrite (const char *s)
{
        #ifdef ModelP
  if (me==master)
  {
        #endif

  if (mutelevel>-1000)
    printf("%s", s);
  if (logFile!=NULL) {
    if ( fputs(s,logFile) < 0 )
    {
      UserWrite( "ERROR in writing logfile\n" );
                        #ifdef Debug
      printf( "ERROR in writing logfile\n" );
      fflush(logFile);
                        #endif
    }
                #ifdef Debug
    fflush(logFile);
                #endif
  }

        #ifdef ModelP
}
else
{
  PRINTDEBUG(ui,1,("%d: %s\n", me,s))
  IFDEBUG(ui,0)
  if (logFile!=NULL) {
    if ( fputs(s,logFile) < 0 )
    {
      UserWrite( "ERROR in writing logfile\n" );
      printf( "ERROR in writing logfile\n" );
      fflush(logFile);
    }
    fflush(logFile);
  }
  ENDDEBUG
}
        #endif
}

/****************************************************************************/
/*D
   UserWriteF - write a formated string to shell window

   SYNOPSIS:
   int UserWriteF (const char *format, ...);

   PARAMETERS:
   .  format -
   .  ... - list of arguments for format string

   DESCRIPTION:
   This function writes a formated string to shell
   window with log file  mechanism.

   RETURN VALUE:
   int
   .n    0 if ok
   .n    1 if error occured.
   D*/
/****************************************************************************/

#define VAR_ARG_BUFLEN 512

int NS_PREFIX UserWriteF (const char *format, ...)
{
  char buffer[VAR_ARG_BUFLEN];
  va_list args;
  int count;

  /* initialize args */
  va_start(args,format);

  count = vsprintf(buffer,format,args);
  assert(count<VAR_ARG_BUFLEN-1);

        #ifdef ModelP
  if (me==master)
  {
        #endif

  if (mutelevel>-1000)
    printf("%s", buffer);

        #ifdef ModelP
}
else
{
  PRINTDEBUG(ui,1,("%d: %s\n", me,buffer))
  IFDEBUG(ui,0)
  if (logFile!=NULL) {
    if ( fputs(buffer,logFile) < 0 )
    {
      UserWrite( "ERROR in writing logfile\n" );
      printf( "ERROR in writing logfile\n" );
    }
    fflush(logFile);
  }
  ENDDEBUG
}
        #endif

  if (logFile!=NULL) {
    if ( fputs(buffer,logFile) < 0 )
    {
      UserWrite( "ERROR in writing logfile\n" );
                        #ifdef Debug
      printf( "ERROR in writing logfile\n" );
      fflush(logFile);
                        #endif
      va_end(args);
      return 1;
    }
                #ifdef Debug
    fflush(logFile);
                #endif
  }

  /* garbage collection */
  va_end(args);

  return (0);
}

/****************************************************************************/
/** \brief Formatted error output (also to log file)
 *
 * @param   type - 'W','E','F'
 * @param   procName - name  of procedure where error occured
 * @param   text -  additional explanation
 *
 * This function formats error output (also to log file).
 *
 * \sa PrintErrorMessageF
 */
/****************************************************************************/

void NS_PREFIX PrintErrorMessage (char type, const char *procName, const char *text)
{
  char classText[32];
  INT oldmutelevel;

  oldmutelevel = mutelevel;
  switch (type)
  {
  case 'W' :
    strcpy(classText,"WARNING");
    break;

  case 'E' :
    strcpy(classText,"ERROR");
    mutelevel = 0;
    break;

  case 'F' :
    strcpy(classText,"FATAL");
    mutelevel = 0;
    break;

  default :
    strcpy(classText,"USERERROR");
    break;
  }
  UserWriteF("%s in %.20s: %.200s\n",classText,procName,text);
  mutelevel = oldmutelevel;
}

/****************************************************************************/
/*D
   PrintErrorMessageF - Formatted error output with fotmatted message (also to log file)

   SYNOPSIS:
   void PrintErrorMessageF (char type, const char *procName, const char *format, ...);

   PARAMETERS:
 * @param   type - 'W','E','F'
 * @param   procName - name  of procedure where error occured
 * @param   format -  additional formatted explanation (like printf)

   DESCRIPTION:
   This function formats error output (also to log file).
   After expanding message 'PrintErrorMessage' is called.

   RETURN VALUE:
   void

 * \sa PrintErrorMessage
   D*/
/****************************************************************************/

void NS_PREFIX PrintErrorMessageF (char type, const char *procName, const char *format, ...)
{
  char buffer[256];
  va_list args;

  /* initialize args */
  va_start(args,format);

  vsprintf(buffer,format,args);

  PrintErrorMessage(type,procName,buffer);

  /* garbage collection */
  va_end(args);
}

/****************************************************************************/
/*D
   SetMuteLevel - set mute level for verbosing level

   SYNOPSIS:
   void SetMuteLevel (INT mute);

   PARAMETERS:
 * @param   mute - indicator of amount of output

   DESCRIPTION:
   This function sets the mute level for verbosing level.

   CONVENTION:
   'mute <= -1' cancels the echoing of `ug`-commands, 'mute >= 0'
   restores the echoing (which is the default state). 'mute <= -1000' suppresses
   also the output of `ug` commands.

   RETURN VALUE:
   void
   D*/
/****************************************************************************/

void NS_PREFIX SetMuteLevel (INT mute)
{
  mutelevel = mute;
}

/****************************************************************************/
/*D
   GetMuteLevel - return mute level for verbosing level

   SYNOPSIS:
   INT GetMuteLevel (void);

   PARAMETERS:
   .  void

   CONVENTION:
   'mute <= -1' cancels the echoing of `ug`-commands, 'mute >= 0'
   restores the echoing (which is the default state). 'mute <= -1000' suppresses
   also the output of `ug` commands.

   DESCRIPTION:
   This function return the mute level for verbosing level.

   RETURN VALUE:
   void
   D*/
/****************************************************************************/

INT NS_PREFIX GetMuteLevel (void)
{
  return (mutelevel);
}

/****************************************************************************/
/*D
   InitDevices - Initialize all devices at startup

   SYNOPSIS:
   INT InitDevices (int *argcp, char **argv);

   PARAMETERS:
 * @param   argcp - pointer to argument counter
 * @param   argv  - command line parameters

   DESCRIPTION:
   This function initializes all devices at startup.
   It must be extended when an output device is added.

   RETURN VALUE:
   INT
   .n    0 if ok
   .n    1 if some error occured.
   D*/
/****************************************************************************/


INT NS_PREFIX InitDevices (int *argcp, char **argv)
{
  char buffer[256];

  /* get default mutelevel from defaults file */
  if (GetDefaultValue(DEFAULTSFILENAME,"mutelevel",buffer)==0)
  {
    int ival = 0;
    sscanf(buffer," %d ",&ival);
    SetMuteLevel ((INT) ival);
  }

  return(0);
}



INT NS_PREFIX ExitDevices (void)
{
  return(0);         /* no error */
}
