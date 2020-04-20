#!/bin/bash
mkdir -p cp
javac ./SkunkProject/src/*.java -classpath ./SkunkProject/lib/stdlib.jar:./SkunkProject/lib/stdlib-package.jar -d cp