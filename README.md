Supervision Tracker Hub
=======================

This folder contains the staff-ready local tracker package.

Mac
---
Open the "For Mac" folder and double-click:

Start Tracker - Mac.command

Windows
-------
Open the "For Windows" folder and double-click:

Start Tracker - Windows.bat

Command line
------------
You can also launch the tracker from a command line.

On Windows Command Prompt, open this folder and run:

python "Supervision Tracker.pyz"

On Mac Terminal, open this folder and run:

python3 "Supervision Tracker.pyz"

What happens
------------
The launcher checks Python, checks the blank data files, starts the tracker,
and opens the browser automatically.

The usual address is:

http://127.0.0.1:8000

If port 8000 is already being used, the tracker will automatically use the
next available port and open the correct address.

Keep the launcher window open while using the tracker.
Closing the window stops the tracker.
Closing the tracker browser tab/window also stops the local tracker and releases
the port.

Files
-----
Supervision Tracker.pyz is the packaged tracker application.
data/students.csv stores student records.
data/meetings.csv stores meeting records.

Student import
--------------
Use CSV or .xlsx files.

Required column:
- name

Optional columns:
- project title
- ID
- email
- notes
- status

The import also accepts common alternatives such as student name, full name,
student number, registration number, email address, and dissertation title.

Older .xls files should be saved as .xlsx or CSV before importing.

Copyright
---------
© 2026 Ali Jaddoa. All rights reserved.
Website: https://www.alijaddoa.com
Email: ali.jaddoa@roehampton.ac.uk
