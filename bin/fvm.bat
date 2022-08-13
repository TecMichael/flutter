@echo off
rem This file was created by pub v2.17.3.
rem Package: fvm
rem Version: 2.4.1
rem Executable: fvm
rem Script: main
if exist "C:\Users\AgbajeMicheal\AppData\Local\Pub\Cache\global_packages\fvm\bin\main.dart-2.17.3.snapshot" (
  call dart "C:\Users\AgbajeMicheal\AppData\Local\Pub\Cache\global_packages\fvm\bin\main.dart-2.17.3.snapshot" %*
  rem The VM exits with code 253 if the snapshot version is out-of-date.
  rem If it is, we need to delete it and run "pub global" manually.
  if not errorlevel 253 (
    goto error
  )
  dart pub global run fvm:main %*
) else (
  dart pub global run fvm:main %*
)
goto eof
:error
exit /b %errorlevel%
:eof

