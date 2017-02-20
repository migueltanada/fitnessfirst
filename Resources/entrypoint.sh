#!/bin/bash

sed -i -e '/SELENIUM_HUB_URL/d' /opt/fitnesse/plugins.properties
echo "SELENIUM_HUB_URL = ${SELENIUM_HUB_URL}" >> /opt/fitnesse/plugins.properties

java -jar fitnesse-standalone.jar -a passwords.txt

