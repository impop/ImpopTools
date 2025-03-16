call "%~dp0\vars.bat" %~dp0\%1

curl http://%IP%/sony/video ^
-H "Content-Type: application/json" ^
-H "X-Auth-PSK: %SHAREDKEY%" ^
-X POST ^
-d @%~dp0\payloads\autoPictureModeOff.json

curl http://%IP%/sony/video ^
-H "Content-Type: application/json" ^
-H "X-Auth-PSK: %SHAREDKEY%" ^
-X POST ^
-d @%~dp0\payloads\sportsmode.json

curl http://%IP%/sony/video ^
-H "Content-Type: application/json" ^
-H "X-Auth-PSK: %SHAREDKEY%" ^
-X POST ^
-d @%~dp0\payloads\hdrModeOff.json

curl http://%IP%/sony/video ^
-H "Content-Type: application/json" ^
-H "X-Auth-PSK: %SHAREDKEY%" ^
-X POST ^
-d @%~dp0\payloads\hdrModeAuto.json