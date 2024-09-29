curl http://192.168.1.15/sony/video ^
-H "Content-Type: application/json" ^
-H "X-Auth-PSK: 1111" ^
-X POST ^
-d @gameMode.json

curl http://192.168.1.15/sony/video ^
-H "Content-Type: application/json" ^
-H "X-Auth-PSK: 1111" ^
-X POST ^
-d @hdrModeOff.json

curl http://192.168.1.15/sony/video ^
-H "Content-Type: application/json" ^
-H "X-Auth-PSK: 1111" ^
-X POST ^
-d @autoPictureModeOff.json


curl http://192.168.1.15/sony/video ^
-H "Content-Type: application/json" ^
-H "X-Auth-PSK: 1111" ^
-X POST ^
-d @hdrModeAuto.json
