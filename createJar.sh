#!/bin/bash
touch manifest.mf
echo -e "Manifest-Version: 1.0\nMain-Class: startMasterMind" > manifest.mf
sh compileme.sh
jar cmf manifest.mf MasterMind-PP1.jar *.class */*.class mastermind_gui/mastermind_templates/*.class 2>> mastermind_error.log
rm manifest.mf
if [ -e mastermind_error.log ] && [ $(wc -l mastermind_error.log | awk '{print $1}') -gt "0" ]; then
  echo "Errors occurred. See mastermind_error.log for more information."
else
  echo "The JAR file has been created. Run 'java -jar MasterMind-PP1.jar' to start it."
fi
