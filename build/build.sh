#!/bin/bash
mvn install -Dtest=false -DfailIfNoTests=false
mvn exec:java -Dexec.mainClass="Build"

