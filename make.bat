xas99.py src/crazy-climber.a99 -i -q -R -L crazy-climber.lst -E symbols.txt -o bin/main
rem xas99.py src/rom-banks.a99 -B -q -R -o bin/banks.bin

java -jar tools/ea5tocart.jar bin\main "CRAZY CLIMBER"

copy /b bin\main8.bin ^
    crazy-climber8.bin
rem    + bin\banks.bin ^

rem java -jar tools/CopyHeader.jar crazy-climber8.bin 60

rem jar -cvf crazy-climber.rpk crazy-climber8.bin layout.xml > make.log

