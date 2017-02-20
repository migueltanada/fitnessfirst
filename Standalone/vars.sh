#!/bin/bash
#false if you already have an existing grid i.e you already have adop
export SELENIUM_PROVISION="true"

#Edit only when you have your own hub
export SELENIUM_HUB_URL=http://selenium-hub:4444/wd/hub/


#name of network. Any name if standalone if thru adop it should be the same as the network of your adop tools
export CUSTOM_NETWORK_NAME="fitnesse-network"
