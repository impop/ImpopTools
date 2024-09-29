call "vars.bat" %1

curl http://%IP%/sony/audio ^
-H "Content-Type: application/json" ^
-H "X-Auth-PSK: %SHAREDKEY%" ^
-X POST ^
-d @payloads\audioSystem.json