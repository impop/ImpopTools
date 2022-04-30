rem https://gist.github.com/kalleth/e10e8f3b8b7cb1bac21463b0073a65fb

curl http://192.168.1.115/sony/video ^
-H "Content-Type: application/json" ^
-H "X-Auth-PSK: 1234" ^
-X POST ^
-d @cinemaHomemode.json

curl http://192.168.1.115/sony/video ^
-H "Content-Type: application/json" ^
-H "X-Auth-PSK: 1234" ^
-X POST ^
-d @autoPictureModeOn.json