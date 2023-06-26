::system batch file to automate dependency check and installation 

::echo off to negate verbosity in terminal
@echo off

::title of batch file
TITLE Automation of dependency check and installation

::
::checking and/or installing requisite dependencies
::

::install pandas; required for rest of dependency checks/installations
echo [95m~! Installation of pandas for intuitive df useage !~[0m
echo:
pip install pandas

echo:
echo [95m~! Checking and/or installing remaining python dependencies !~[0m
echo:

::call python interpreter and dependency source code
python ./dsrc/pyDependencies.py
echo:

echo [96mDependency check/installation complete[0m
pause