// -*- tab-width: 4; indent-tabs-mode: nil; c-basic-offset: 2 -*-
// vi: set et ts=4 sw=2 sts=2:
/****************************************************************************/
/*                                                                          */
/* File:      ugdevices.h                                                   */
/*                                                                          */
/* Purpose:   implements a simple but portable graphical user interface     */
/*                                                                          */
/* Author:    Peter Bastian                                                 */
/*            Institut fuer Computeranwendungen III                         */
/*            Universitaet Stuttgart                                        */
/*            Pfaffenwaldring 27                                            */
/*            70569 Stuttgart                                               */
/*            email: ug@ica3.uni-stuttgart.de                               */
/*                                                                          */
/* History:   14.06.93 begin, ug version ug21Xmas3d                         */
/*            16.12.94 restructured for ug version 3.0                      */
/*                                                                          */
/* Remarks:   was "devices.h" in earlier version of UG                      */
/*                                                                          */
/****************************************************************************/

#ifndef __DEVICESH__
#define __DEVICESH__

#include <cstdio>

#include "ugtypes.h"

#include "ugenv.h"

#include "namespace.h"

START_UG_NAMESPACE

/* initialization and clean up */
INT               InitDevices                           (int *argcp, char **argv);
INT           ExitDevices               (void);

/* set/get mute level for output control */
void              SetMuteLevel                          (INT mute);
INT               GetMuteLevel                          (void);

/* text output to shell with log file mechanism */
void              UserWrite                             (const char *s);
int               UserWriteF                            (const char *format, ...);
void              PrintErrorMessage             (char type, const char *procName, const char *text);
void              PrintErrorMessageF            (char type, const char *procName, const char *format, ...);
INT               OpenLogFile                           (const char *name, int rename);
INT               CloseLogFile                          (void);
INT                       SetLogFile                            (FILE *file);
INT               WriteLogFile                          (const char *text);

END_UG_NAMESPACE

#endif
