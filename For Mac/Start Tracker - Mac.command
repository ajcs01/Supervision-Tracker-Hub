#!/bin/bash
cd "$(dirname "$0")/.."

APP_FILE="Supervision Tracker.pyz"

echo "========================================"
echo "Supervision Tracker - Mac"
echo "========================================"
echo
echo "This launcher will:"
echo "1. Check Python 3 is available."
echo "2. Check the tracker data files."
echo "3. Start the local tracker."
echo "4. Open the tracker in your default browser."
echo

if ! command -v python3 >/dev/null 2>&1; then
  echo "Python 3 was not found."
  echo "Please install Python 3, then run this launcher again."
  echo
  read -p "Press Enter to close this window..."
  exit 1
fi

if [ ! -f "$APP_FILE" ]; then
  echo "$APP_FILE was not found."
  echo "Please keep this launcher inside the Supervision Tracker Hub folder."
  echo
  read -p "Press Enter to close this window..."
  exit 1
fi

mkdir -p data

if [ ! -f "data/students.csv" ]; then
  printf "student_id,name,university_id,email,project_title,notes,status\n" > "data/students.csv"
fi

if [ ! -f "data/meetings.csv" ]; then
  printf "meeting_id,student_id,date,mode,attendance,issue,next_action,notes\n" > "data/meetings.csv"
fi

echo "Starting tracker..."
echo
echo "Keep this window open while using the tracker."
echo "Press Control+C here to stop it."
echo

python3 "$APP_FILE"
