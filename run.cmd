echo %JAVA_HOME%

java -version
javac -version
mvnw -version


mvnw clean install site -DskipTests=true
