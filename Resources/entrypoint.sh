#!/bin/bash

sed -i -e '/SELENIUM_HUB_URL/d' /opt/fitnesse/plugins.properties

if [ "SELENIUM_PROVISION" = "true" ]
then
   echo "SELENIUM_HUB_URL = http://selenium-hub:4444/wd/hub/" >> /opt/fitnesse/plugins.properties
else
   echo "SELENIUM_HUB_URL = ${SELENIUM_HUB_URL}" >> /opt/fitnesse/plugins.properties
fi

java -jar fitnesse-standalone.jar -a passwords.txt

