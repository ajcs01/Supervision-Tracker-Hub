@echo off
cd /d "%~dp0\.."

set APP_FILE=Supervision Tracker.pyz

echo ========================================
echo Supervision Tracker - Windows
echo ========================================
echo.
echo This launcher will:
echo 1. Check Python is available.
echo 2. Check the tracker data files.
echo 3. Start the local tracker.
echo 4. Open the tracker in your default browser.
echo.

where python >nul 2>nul
if errorlevel 1 (
  echo Python was not found.
  echo Please install Python 3, then run this launcher again.
  echo.
  pause
  exit /b 1
)

if not exist "%APP_FILE%" (
  echo %APP_FILE% was not found.
  echo Please keep this launcher inside the Supervision Tracker Hub folder.
  echo.
  pause
  exit /b 1
)

if not exist data mkdir data

if not exist "data\students.csv" (
  echo student_id,name,university_id,email,project_title,notes,status> "data\students.csv"
)

if not exist "data\meetings.csv" (
  echo meeting_id,student_id,date,mode,attendance,issue,next_action,notes> "data\meetings.csv"
)

echo.
echo Starting tracker...
echo Keep this window open while using the tracker.
echo Press Control+C here to stop it.
echo.

python "%APP_FILE%"

pause
