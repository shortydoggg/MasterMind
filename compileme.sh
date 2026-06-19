#!/bin/bash
javac -target 1.6 -source 1.6 -encoding utf-8 *.java mastermind_core/*.java mastermind_save_load/*.java mastermind_gui/mastermind_templates/*.java mastermind_gui/*.java  -Xlint:-options 2> mastermind_error.log
if [ -e mastermind_error.log ] && [ $(wc -l mastermind_error.log | awk '{print $1}') -gt "0" ]; then
  echo "Errors occurred. See mastermind_error.log for more information."
else
  echo "MasterMind was successfully created!"
fi
