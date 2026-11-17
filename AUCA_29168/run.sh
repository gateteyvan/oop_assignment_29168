#!/bin/sh
# AUCA_28422 - compile and run (macOS / Linux). Needs JDK 21+.
cd "$(dirname "$0")" || exit 1
rm -rf out && mkdir out
javac --release 21 -encoding UTF-8 -d out $(find src -name '*.java') || exit 1
java -cp out com.auca.main.Main
