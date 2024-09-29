call "vars.bat" %1

curl http://%IP%/sony/video ^
-H "Content-Type: application/json" ^
-H "X-Auth-PSK: %SHAREDKEY%" ^
-X POST ^
-d @payloads\autoPictureModeOff.json

curl http://%IP%/sony/video ^
-H "Content-Type: application/json" ^
-H "X-Auth-PSK: %SHAREDKEY%" ^
-X POST ^
-d @payloads\sportsmode.json

curl http://%IP%/sony/video ^
-H "Content-Type: application/json" ^
-H "X-Auth-PSK: %SHAREDKEY%" ^
-X POST ^
-d @payloads\hdrModeOff.json

curl http://%IP%/sony/video ^
-H "Content-Type: application/json" ^
-H "X-Auth-PSK: %SHAREDKEY%" ^
-X POST ^
-d @payloads\hdrModeAuto.json