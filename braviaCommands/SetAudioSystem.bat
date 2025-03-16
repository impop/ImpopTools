call "vars.bat" %~dp0\%1

curl http://%IP%/sony/audio ^
-H "Content-Type: application/json" ^
-H "X-Auth-PSK: %SHAREDKEY%" ^
-X POST ^
-d @%~dp0\payloads\audioSystem.json