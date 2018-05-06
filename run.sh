#!/usr/bin/env bash

mvn -N io.takari:maven:wrapper -Dmaven=3.5.3

echo $JAVA_HOME

java -version
javac -version
./mvnw -version

#./mvnw clean install site -DskipTests=true

./mvnw verify