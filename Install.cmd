/* Install/UnInstall script for the fonts */

PARSE ARG action
IF RxFuncQuery('SysLoadFuncs') THEN DO
    CALL RxFuncAdd 'SysLoadFuncs', 'RexxUtil', 'SysLoadFuncs'
    CALL SysLoadFuncs
END
CALL RxFuncAdd  'FastIniStart','FastIni','FastIniStart'
CALL RxFuncAdd  'FastIniEnd','FastIni','FastIniEnd'

CALL SysCls
action = TRANSLATE(LEFT(action,1))
SELECT
    WHEN action = 'I' THEN CALL InstallMe
    WHEN action = 'U' THEN CALL UnInstallMe
    OTHERWISE CALL WhatAction
END
Exit

/* End of Install.cmd */

/* WhatAction - no action selected */

WhatAction:     PROCEDURE

CALL SysCls
SAY ' '
SAY 'Please enter installation parameter (I=Install, U=UnInstall, other=Exit):'
ans = TRANSLATE(SysGetKey('ECHO'))
SELECT
    WHEN ans = 'I' THEN CALL InstallMe
    WHEN ans = 'U' THEN CALL UnInstallMe
    OTHERWISE CALL NoAction 'Installation failed.'
END
RETURN

/* End of WhatAction */

/* NoAction - abort Install */

NoAction:   PROCEDURE

PARSE ARG noinstmsg
SAY ' '
SAY noinstmsg
SAY 'Press any key to exit ...'
ans = SysGetKey('NOECHO')
Exit

/* End of NoAction */

/* InstallMe - install fonts */

InstallMe:  PROCEDURE

progname = 'Font Installer'
required = '*.ttf'
IF RIGHT(Directory(),2) = ':\' THEN DO
    SAY 'Problem! '||progname||' can not be installed in root directory.'
    SAY 'Press any key to exit ...'
    ans = SysGetKey('NOECHO')
    Exit
END

CALL SysCls
SAY 'Welcome to '||progname||' Installation procedure!'
SAY 'This procedure will install fonts to the PSFONTS directory.'
SAY 'Press "Y" to start Installation, any other key to exit...'
ans = TRANSLATE(SysGetKey('ECHO'))
SELECT
    WHEN ans = 'Y' THEN NOP
    OTHERWISE CALL NoAction 'Installation aborted.'
END

SAY ' '
SAY 'Installation finished. Press any key to exit ...'
ans = SysGetKey('NOECHO')
Exit

/* End of InstallMe */

/* UnInstallMe - uninstall fonts */

UnInstallMe: PROCEDURE

progname = 'Font Uninstaller'
CALL SysCls
SAY 'This is '||progname||' UnInstallation procedure!'
SAY 'Your files are in PSFONTS directory.'
SAY 'This procedure will destroy '||progname||' Program objects'
SAY 'Press "Y" to start UnInstall, any other key to exit...'
ans = TRANSLATE(SysGetKey('ECHO'))
SELECT
    WHEN ans = 'Y' THEN NOP
    OTHERWISE CALL NoAction 'UnInstall aborted.'
END

/* End of UnInstallMe */

/* rc1 - return code - SysCreateObject */

rc1:        PROCEDURE

PARSE ARG rcSysCreateObject
SELECT
    WHEN rcSysCreateObject = 0 THEN rc1 = 'Error'
    OTHERWISE rc1 = 'OK'
END
RETURN rc1

/* End of rc1 */
