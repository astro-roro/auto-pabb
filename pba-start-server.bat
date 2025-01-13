# Starts the PA server, detects the power box, saves the response to a json file for future use, and connects to the box.
# NINA doesn't think script executes correctly without the final 1 second timeout.

curl -X PUT "http://localhost:32000/Server/Start" -H  "accept: text/plain" -d ""
curl -s -X GET "http://localhost:32000/Server/DeviceManager/Connected" -H "accept: application/json" > C:\Users\Astro\Desktop\response.json
for /f "delims=" %%i in ('powershell -Command "Get-Content 'response.json' | ConvertFrom-Json | Select-Object -ExpandProperty data | Select-Object -First 1 | Select-Object -ExpandProperty uniqueKey"') do set uniqueKey=%%i
curl -X OPTIONS "http://localhost:32000/Driver/PPBAdvance/Start?DriverUniqueKey=%uniqueKey%" -H  "accept: text/plain"
TIMEOUT /T 1
