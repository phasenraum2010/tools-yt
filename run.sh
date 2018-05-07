#!/usr/bin/env bash

source "$HOME/.sdkman/bin/sdkman-init.sh"

sdk use java 8.0.171-oracle

./switch_JVM_version.sh 8

mvn -N io.takari:maven:wrapper -Dmaven=3.5.3

echo $JAVA_HOME

java -version
javac -version
./mvnw -version

#./mvnw -U -e -V clean install site -DskipTests=true

./mvnw -U -e -V verify

./mvnw  -U -e -V clean install dependency:tree