#!/usr/bin/env bash

java_version=$1

if [ $java_version -eq 8 ]; then
	sed -i -e 's/JAVA__9_HOME/JAVA__8_HOME/' ~/.mavenrc
	sed -i -e 's/JAVA_10_HOME/JAVA__8_HOME/' ~/.mavenrc
	if [ -f $PWD/.mvn/jvm.config ]; then
		cp -f $PWD/.mvn/jvm8.config $PWD/.mvn/jvm.config
	fi
elif [ $java_version -eq 9 ]; then
	sed -i -e 's/JAVA__8_HOME/JAVA__9_HOME/' ~/.mavenrc
	sed -i -e 's/JAVA_10_HOME/JAVA__9_HOME/' ~/.mavenrc
	if [ -f $PWD/.mvn/jvm9.config ]; then
		cp -f $PWD/.mvn/jvm9.config $PWD/.mvn/jvm.config
	fi
elif [ $java_version -eq 10 ]; then
	sed -i -e 's/JAVA__8_HOME/JAVA_10_HOME/' ~/.mavenrc
	sed -i -e 's/JAVA__9_HOME/JAVA_10_HOME/' ~/.mavenrc
	if [ -f $PWD/.mvn/jvm9.config ]; then
		cp -f $PWD/.mvn/jvm10.config $PWD/.mvn/jvm.config
	fi
else
	echo "Unknown version $java_version - doing nothing"
fi
