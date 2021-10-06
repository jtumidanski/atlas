ECHO OFF
CD ..
FOR /f %%i IN ('dir ^| grep -Eo "(atlas-(.*))" ^| cut -f2- -d- ^| perl -ne 'print "atlas-$_"'') DO (
  ECHO Building %%i
  CD %%i
  IF EXIST docker-build.bat (
    CALL docker-build.bat
  )
  CD ..
)
CD atlas
