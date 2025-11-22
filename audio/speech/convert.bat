set CLASSPATH=tools/out/videotools.jar

java ConvertWavToLpc -minfrequency 130 -maxfrequency 510 -preemphasis 0.82 -trimsilenceframes -addstopframe go-for-it.wav go-for-it.lpc
java ConvertWavToLpc -trimsilenceframes -addstopframe ouch.wav ouch.lpc
java ConvertWavToLpc -trimsilenceframes -addstopframe oh-no.wav oh-no.lpc
java ConvertWavToLpc -maxfrequency 400 -trimsilenceframes -addstopframe extra-life.wav extra-life.lpc
java ConvertWavToLpc -maxfrequency 500 -trimsilenceframes -addstopframe yuck.wav yuck.lpc

java ConvertLpcToWav go-for-it.lpc test-go-for-it.wav
java ConvertLpcToWav ouch.lpc test-ouch.wav
java ConvertLpcToWav oh-no.lpc test-oh-no.wav
java ConvertLpcToWav extra-life.lpc test-extra-life.wav
java ConvertLpcToWav yuck.lpc test-yuck.wav
