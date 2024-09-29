curl http://192.168.1.15/sony/video ^
-H "Content-Type: application/json" ^
-H "X-Auth-PSK: 1111" ^
-X POST ^
-d @graphicsmode.json

curl http://192.168.1.15/sony/video ^
-H "Content-Type: application/json" ^
-H "X-Auth-PSK: 1111" ^
-X POST ^
-d @hdrModeOff.json

curl http://192.168.1.15/sony/video ^
-H "Content-Type: application/json" ^
-H "X-Auth-PSK: 1111" ^
-X POST ^
-d @autoPictureModeOn.json

curl http://192.168.1.15/sony/video ^
-H "Content-Type: application/json" ^
-H "X-Auth-PSK: 1111" ^
-X POST ^
-d @hdrModeAuto.json
