#!/bin/bash

# as root:
# apt-get install openjdk-7-jdk maven2
# update-alternatives --config java
# apt-get install software-properties-common
# apt-add-repository ppa:chris-lea/node.js
# apt-get update
# apt-get install g++
# apt-get install nodejs npm
# npm install -g millstone
# npm install -g carto

mvn clean install -Dtest=false -DfailIfNoTests=false
mvn exec:java -Dexec.mainClass="Build"

