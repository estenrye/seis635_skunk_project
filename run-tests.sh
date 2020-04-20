#!/bin/sh
rm -rf cp tcp
mkdir -p cp tcp
javac ./SkunkProject/src/*.java -classpath ./SkunkProject/lib/stdlib.jar:./SkunkProject/lib/stdlib-package.jar -d cp
javac ./SkunkProject/test/*.java \
  -classpath ./cp:./SkunkProject/lib/stdlib.jar:./SkunkProject/lib/apiguardian-api-1.0.0.jar:./SkunkProject/lib/hamcrest-core-1.3.jar:./SkunkProject/lib/junit-4.12.jar:./SkunkProject/lib/junit-jupiter-api-5.4.0.jar:./SkunkProject/lib/junit-jupiter-engine-5.4.0.jar:./SkunkProject/lib/junit-jupiter-params-5.4.0.jar:./SkunkProject/lib/junit-platform-commons-1.4.0.jar:./SkunkProject/lib/junit-platform-console-standalone-1.4.0.jar:./SkunkProject/lib/junit-platform-engine-1.4.0.jar:./SkunkProject/lib/junit-platform-launcher-1.4.0.jar:./SkunkProject/lib/junit-platform-runner-1.4.0.jar:./SkunkProject/lib/junit-platform-suite-api-1.4.0.jar:./SkunkProject/lib/junit-vintage-engine-5.4.0.jar:./SkunkProject/lib/opentest4j-1.1.1.jar:./SkunkProject/lib/stdlib-package.jar -d tcp
java \
  -ea -Dfile.encoding=ISO-8859-1 \
  -classpath ./cp:./tcp:./SkunkProject/lib/stdlib.jar:./SkunkProject/lib/apiguardian-api-1.0.0.jar:./SkunkProject/lib/hamcrest-core-1.3.jar:./SkunkProject/lib/junit-4.12.jar:./SkunkProject/lib/junit-jupiter-api-5.4.0.jar:./SkunkProject/lib/junit-jupiter-engine-5.4.0.jar:./SkunkProject/lib/junit-jupiter-params-5.4.0.jar:./SkunkProject/lib/junit-platform-commons-1.4.0.jar:./SkunkProject/lib/junit-platform-console-standalone-1.4.0.jar:./SkunkProject/lib/junit-platform-engine-1.4.0.jar:./SkunkProject/lib/junit-platform-launcher-1.4.0.jar:./SkunkProject/lib/junit-platform-runner-1.4.0.jar:./SkunkProject/lib/junit-platform-suite-api-1.4.0.jar:./SkunkProject/lib/junit-vintage-engine-5.4.0.jar:./SkunkProject/lib/opentest4j-1.1.1.jar:./SkunkProject/lib/stdlib-package.jar \
  org.junit.platform.console.ConsoleLauncher \
  --scan-classpath=./tcp