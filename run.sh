#!/usr/bin/env bash

./switch_JVM_version.sh 8

mvn -N io.takari:maven:wrapper -Dmaven=3.5.3

echo $JAVA_HOME

java -version
javac -version
./mvnw -version

#./mvnw -U -e -V clean install site -DskipTests=true

./mvnw -U -e -V verify

./mvnw  -U -e -V dependency:tree