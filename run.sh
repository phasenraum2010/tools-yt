#!/usr/bin/env bash

source "$HOME/.sdkman/bin/sdkman-init.sh"

mvn -N io.takari:maven:wrapper -Dmaven=3.5.3

echo "----------------------"
echo $JAVA_HOME
echo "----------------------"
java -version
echo "----------------------"
javac -version
echo "----------------------"
./mvnw -version
echo "----------------------"
./mvnw -U -e -V verify
echo "----------------------"
# ./mvnw  -U -e -V clean install dependency:tree -DskipTests=true
echo "----------------------"
# ./mvnw -U -e -V clean install site -DskipTests=true
# echo "----------------------"

exit 0
