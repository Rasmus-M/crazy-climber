xas99.py src/crazy-climber.a99 -i -q -R -L crazy-climber.lst -E symbols.txt -o bin/main
xas99.py src/rom-banks/rom-bank-4.a99 -B -q -R -o bin/bank4.bin
xas99.py src/rom-banks/rom-bank-5.a99 -B -q -R -o bin/bank5.bin
xas99.py src/rom-banks/rom-bank-6.a99 -B -q -R -o bin/bank6.bin
xas99.py src/rom-banks/rom-bank-7.a99 -B -q -R -o bin/bank7.bin
xas99.py src/rom-banks/rom-bank-8.a99 -B -q -R -o bin/bank8.bin

java -jar tools/ea5tocart.jar bin\main "CRAZY CLIMBER"

copy /b bin\main8.bin ^
    + bin\bank4.bin ^
    + bin\bank5.bin ^
    + bin\bank6.bin ^
    + bin\bank7.bin ^
    + bin\bank8.bin ^
    + bin\empty.bin ^
    + bin\empty.bin ^
    + bin\empty.bin ^
    + bin\empty.bin ^
    + bin\empty.bin ^
    + bin\empty.bin ^
    + bin\empty.bin ^
    crazy-climber8.bin

java -jar tools/CopyHeader.jar crazy-climber8.bin 60

jar -cvf crazy-climber.rpk crazy-climber8.bin layout.xml > make.log

