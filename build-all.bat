ECHO OFF
CD ..
FOR /f %%i IN ('dir ^| grep -Po "(atlas-(.*))"') DO (
  ECHO Building %%i
  CD %%i
  IF EXIST docker-build.bat (
    CALL docker-build.bat
  )
  CD ..
)
CD atlas
