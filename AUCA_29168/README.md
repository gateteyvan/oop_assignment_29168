# AUCA_28422 School Management

Console app (Java 21). Records are kept in memory; option 0 exits.

## Requirements
JDK 21 or newer (`javac -version` must work).

## Run (easiest)
- macOS / Linux: `sh run.sh`
- Windows: double-click `run.bat` (or run it in the terminal)

## Run in VS Code
Open this folder (the one containing `src/`), then open
`src/com/auca/main/Main.java` and click Run above `main`.
Use the integrated terminal for input.

## Run manually
macOS / Linux:
```sh
javac --release 21 -encoding UTF-8 -d out $(find src -name '*.java')
java -cp out com.auca.main.Main
```
Windows PowerShell:
```powershell
javac --release 21 -encoding UTF-8 -d out (Get-ChildItem -Recurse src -Filter *.java).FullName
java -cp out com.auca.main.Main
```

## Structure
- `src/com/auca/...` source code
- `bin/` precompiled classes (Java 21 compatible; run with `java -cp bin com.auca.main.Main`)
- `lib/` empty, no external dependencies
