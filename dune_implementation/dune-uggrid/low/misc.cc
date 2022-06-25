// -*- tab-width: 4; indent-tabs-mode: nil; c-basic-offset: 2 -*-
// vi: set et ts=4 sw=2 sts=2:
/****************************************************************************/
/*                                                                          */
/* File:      misc.c                                                        */
/*                                                                          */
/* Purpose:   miscellaneous routines                                        */
/*                                                                          */
/* Author:      Klaus Johannsen                                             */
/*              Institut fuer Computeranwendungen                           */
/*              Universitaet Stuttgart                                      */
/*              Pfaffenwaldring 27                                          */
/*              70569 Stuttgart                                             */
/*            internet: ug@ica3.uni-stuttgart.de                            */
/*                                                                          */
/* History:   08.12.94 begin, ug3-version                                   */
/*                                                                          */
/* Revision:  07.09.95                                                      */
/*                                                                          */
/****************************************************************************/

/****************************************************************************/
/*                                                                          */
/* include files                                                            */
/*              system include files                                        */
/*              application include files                                   */
/*                                                                          */
/****************************************************************************/

#include <config.h>
#include <cmath>
#include <cassert>
#include <cstdlib>
#include <cstring>
#include <ctype.h>
#include <cstddef>
#include <cstdio>
#include <climits>
#include <float.h>

#include "ugtypes.h"
#include "architecture.h"
#include "general.h"
#include "misc.h"
#include "heaps.h"

USING_UG_NAMESPACE

/****************************************************************************/
/*                                                                          */
/* defines in the following order                                           */
/*                                                                          */
/*          compile time constants defining static data size (i.e. arrays)  */
/*          other constants                                                 */
/*          macros                                                          */
/*                                                                          */
/****************************************************************************/

/****************************************************************************/
/*                                                                          */
/* data structures used in this source file (exported data structures are   */
/*          in the corresponding include file!)                             */
/*                                                                          */
/****************************************************************************/



/****************************************************************************/
/*                                                                          */
/* definition of exported global variables                                  */
/*                                                                          */
/****************************************************************************/

#ifndef ModelP
int PPIF::me = 0;              /* to have in the serial case this variable as a dummy */
int PPIF::master = 0;          /* to have in the serial case this variable as a dummy */
int PPIF::procs = 1;           /* to have in the serial case this variable as a dummy */
int NS_PREFIX _proclist_ = -1; /* to have in the serial case this variable as a dummy */
int NS_PREFIX _partition_ = 0; /* to have in the serial case this variable as a dummy */
#endif

/****************************************************************************/
/*                                                                          */
/* definition of variables global to this source file only (static!)        */
/*                                                                          */
/****************************************************************************/


/****************************************************************************/
/*                                                                          */
/* forward declarations of macros                                           */
/*                                                                          */
/****************************************************************************/

#define MIN_DETERMINANT                 1e-8

/* for ExpandCShellVars */
#define CSHELL_VAR_BEGIN                "$("
#define CSHELL_VAR_BEGIN_LEN    2               /* strlen(CSHELL_VAR_BEGIN)			*/
#define CSHELL_VAR_END                  ")"
#define CSHELL_VAR_END_LEN              1               /* strlen(CSHELL_VAR_END)			*/

/****************************************************************************/
/****************************************************************************/
/****************************************************************************/
/****                                                                    ****/
/****        general routines                                            ****/
/****                                                                    ****/
/****************************************************************************/
/****************************************************************************/
/****************************************************************************/

/****************************************************************************/
/** \brief Transform an INT into a bitpattern string

   \param n - integer to convert
   \param text - string of size >= 33 for conversion

   This function transforms an INT into a bitpattern string consisting of 0s
   and 1s only.
 */
/****************************************************************************/

void NS_PREFIX INT_2_bitpattern (INT n, char text[33])
{
  INT i;

  memset(text,'0',32*sizeof(char));

  for (i=0; i<32; i++)
    if ((1<<i)&n)
      text[31-i] = '1';
  text[32] = '\0';

  return;
}

/****************************************************************************/
/** \brief Compose a headline of chars with string centered

   \param str - string to print to
   \param PatLen - width of headline
   \param text - text to center in headline
   \param p - char replicated for headline
   \param end - trailing string (optional)

   Fill str up to PatLen with pattern and center text in it. Terminate the str with end

   \return
   0 okay 1 error
 */
/****************************************************************************/

INT NS_PREFIX CenterInPattern (char *str, INT PatLen, const char *text, char p, const char *end)
{
  INT i,TextBegin,TextEnd,TextLen;

  TextLen   = strlen(text);
  TextBegin = (PatLen-TextLen)/2;
  TextEnd   = TextBegin+TextLen;

  if (TextLen>PatLen)
    return (CenterInPattern(str,PatLen," text too long ",p,end));

  for (i=0; i<TextBegin-1; i++)
    str[i] = p;
  str[i] = ' ';
  for (i=TextBegin; i<TextEnd; i++)
    str[i] = *(text++);
  str[i++] = ' ';
  for (; i<PatLen; i++)
    str[i] = p;
  str[PatLen] = '\0';
  if (end!=NULL)
    strcat(str,end);

  return (0);
}

#define FMTBUFFSIZE         1031

static char newfmt[FMTBUFFSIZE];

/****************************************************************************/
/** \brief Expand (make explicit) charset-ranges in scanf

   This function expands (make explicit) charset-ranges in scanf.
   For example '%<number>[...a-d...]' --> '%<number>[...abcd...]'.

   \return
   .n        new pointer to char
 */
/****************************************************************************/
char * NS_PREFIX expandfmt (const char *fmt)
{
  const char *pos;
  char *newpos;
  char leftchar,rightchar;
  int newlen;

  /* calculate min size of newfmt */
  newlen = strlen(fmt);
  assert (newlen<FMTBUFFSIZE-1);

  pos    = fmt;
  newpos = newfmt;

  /* scan fmt for %<number>[ */
  while (*pos!='\0')
  {
    /* copy til '%' */
    while (*pos!='%' && *pos!='\0')
      *(newpos++) = *(pos++);

    if (*pos=='\0')
      break;

    *(newpos++) = *(pos++);

    /* copy til !isdigit */
    while (isdigit(*pos) && *pos!='\0')
      *(newpos++) = *(pos++);

    if (*pos=='\0')
      break;

    if (*pos!='[')
      continue;

    *(newpos++) = *(pos++);

    /* ']' following '[' is included in the charset */
    if ((*pos)==']')
      *(newpos++) = *(pos++);

    /* '^]' following '[' is included in the charset */
    else if ((*pos)=='^' && (*(pos+1))==']')
    {
      *(newpos++) = *(pos++);
      *(newpos++) = *(pos++);
    }

    while (*pos!=']' && *pos!='\0')
    {
      /* now we are inside the charset '[...]': */

      /* treat character ranges indicated by '-' */
      while (*pos!='-' && *pos!=']' && *pos!='\0')
        *(newpos++) = *(pos++);

      if (*pos=='\0')
        break;

      if ((*pos)==']')
        continue;

      /* gotya: is left char < right char? */
      leftchar  = *(pos-1);
      rightchar = *(pos+1);

      if (leftchar=='[' || rightchar==']')
      {
        *(newpos++) = *(pos++);
        continue;
      }

      if (leftchar>=rightchar)
      {
        *(newpos++) = *(pos++);
        continue;
      }

      if (leftchar+1==rightchar)
      {
        /* for example '...b-c...' */
        pos++;
        continue;
      }

      /* calc new size and expand range */
      newlen += rightchar-leftchar-2;
      assert (newlen<FMTBUFFSIZE-1);

      leftchar++;
      pos++;

      while (leftchar<rightchar)
      {
        if (leftchar=='^' || leftchar==']')
        {
          leftchar++;
          continue;
        }
        *(newpos++) = leftchar++;
      }
    }
  }

  *newpos = '\0';

  return (newfmt);
}

char * NS_PREFIX ExpandCShellVars (char *string)
{
  if (strstr(string,CSHELL_VAR_BEGIN)!=NULL)
  {
    /* shell var reference contained: copy string and expand vars */
    char *copy = strdup(string);
    char *p0  = copy;                           /* current pos  */
    char *p1;                                           /* end of token */

    string[0] = '\0';

    while ((p1 = strstr(p0,CSHELL_VAR_BEGIN))!=NULL)
    {
      char *var;

      /* enclose current pos (p0) to CSHELL_VAR_BEGIN between p0,p1 */
      *p1 = '\0';

      /* copy verbatim */
      strcat(string,p0);

      /* advance p0 to begin of shell var name */
      p0 = p1+CSHELL_VAR_BEGIN_LEN;

      /* enclose current pos (p0) to CSHELL_VAR_END between p0,p1 */
      p1 = strstr(p0,CSHELL_VAR_END);
      if (p1==NULL)
      {
        free(copy);
        return NULL;
      }
      *p1 = '\0';

      /* copy shell variable iff */
      var = getenv(p0);
      if (var==NULL)
      {
        free(copy);
        return NULL;
      }
      strcat(string,var);

      /* advance p0 */
      p0 = p1+CSHELL_VAR_END_LEN;
    }
    /* copy remainder */
    strcat(string,p0);
    free(copy);
  }
  return string;
}

/****************************************************************************/
/** \brief Split a string into tokens each of maximal length 'n+1'

   \param str -   pointer to char (const)
   \param sep -   pointer to char (const)
   \param n -     integer, number of chars in token
   \param token - pointer to char

   This function splits a string into tokens each of maximal length 'n+1'.
   A pointer to the next char following the token (its a sep) is returned.
   NB: possibly check whether the returned char is a sep.
   If not: the token was to long and only the first n chars where copied!

   \return
   .n     pointer to token
   .n     NULL if token larger than n.
 */
/****************************************************************************/

const char * NS_PREFIX strntok (const char *str, const char *sep, int n, char *token)
{
  int i;

  /* scan while current char is a seperator */
  while ((*str!='\0') && (strchr(sep,*str)!=NULL)) str++;

  /* copy into token */
  for (i=0; i<n; i++,str++)
    if ((*str!='\0') && (strchr(sep,*str)==NULL))
      token[i] = *str;
    else
      break;

  if (strchr(sep,*str)==NULL)
    return (NULL);                    /* ERROR: token too long! */

  /* 0-terminate string */
  token[i] = '\0';

  return (str);
}

/****************************************************************************/
/** \brief Convert a (memory)size specification from String to MEM (long int)

   \param s - input string
   \param mem_size - the specified mem size in byte

   This function converts a (memory)size specification from String to type MEM (an integer type).
   The size specification contains an integer number followed by an optional unit specifier:
      G for gigabyte
      M for megabyte
      K for kilobyte
   (also the lower case chars are recognized).

   EXAMPLE:
      "10M" is converted to 10485760 (10 mega byte).

   \return
   INT: 0 ok
        1 integer could not be read
        2 invalid unit specifier

   \sa
   MEM, WriteMemSizeToString
 */
/****************************************************************************/

INT NS_PREFIX ReadMemSizeFromString (const char *s, MEM *mem_size )
{
  float mem;

  if (sscanf( s, "%e",&mem)!=1)
    return(1);

  switch( s[strlen(s)-1] )
  {
  case 'k' : case 'K' :             /* check for [kK]ilobyte-notation */
    *mem_size = (MEM)floor(mem * KBYTE);
    return(0);
  case 'm' : case 'M' :             /* check for [mM]egabyte-notation */
    *mem_size = (MEM)floor(mem * MBYTE);
    return(0);
  case 'g' : case 'G' :             /* check for [gG]igabyte-notation */
    *mem_size = (MEM)floor(mem * GBYTE);
    return(0);
  case '0' : case '1' : case '2' : case '3' : case '4' : case '5' : case '6' : case '7' : case '8' : case '9' :     /* no mem unit character recognized */
    *mem_size = (MEM)floor(mem);
    return(0);
  default :              /* unknown mem unit character */
    return(2);
  }
}

/****************************************************************************/
/** \brief Convert a (memory)size MEM to string

   \param s - input string
   \param mem_size - the specified mem size in byte

   This function writes a MEM size in MBytes to string in a format that is recognized by
   WriteMemSizeToString.

   \return
   0 ok

   \sa
   MEM, ReadMemSizeFromString
 */
/****************************************************************************/

INT NS_PREFIX WriteMemSizeToString (MEM mem_size, char *s)
{
  float mem = mem_size;

  /* write mem size in units of MByte */
  sprintf(s, "%g M",mem/MBYTE);
  return 0;
}
