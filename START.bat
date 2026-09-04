@echo off
title PDF Viewer
cd /d "%~dp0"
if exist "dist\PDF Viewer.exe" (
  start "" "dist\PDF Viewer.exe"
) else (
  for /r %%f in (*.exe) do ( start "" "%%f" & exit /b 0 )
  echo No built exe found - run the PyInstaller build first.
  pause
)
