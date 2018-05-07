@REM mvn -N io.takari:maven:wrapper -Dmaven=3.3.9

echo "----------------------"
echo %JAVA_HOME%
echo %M2_HOME%
echo %M2_REPO%
echo "----------------------"
java -version
echo "----------------------"
javac -version
echo "----------------------"
@REM mvnw -version
echo "----------------------"
mvnw -U -e -V verify
echo "----------------------"
mvnw -U -e -V clean install dependency:tree -DskipTests=true
echo "----------------------"
mvnw -U -e -V clean install site -DskipTests=true

