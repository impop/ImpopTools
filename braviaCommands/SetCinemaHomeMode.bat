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
-d @payloads\cinemaHomemode.json


REM old sony tv picturemode
curl http://%IP%/sony/video ^
-H "Content-Type: application/json" ^
-H "X-Auth-PSK: %SHAREDKEY%" ^
-X POST ^
-d @payloads\cinemaHomeOldmode.json

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

