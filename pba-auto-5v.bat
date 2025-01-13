# This changes the voltage on the adjustable power out within the advance sequencer - no popup required. Very good for changing brightness of flat panels automatically for different filters.

for /f "delims=" %%i in ('powershell -Command "Get-Content 'C:\Users\Astro\Desktop\response.json' | ConvertFrom-Json | Select-Object -ExpandProperty data | Select-Object -First 1 | Select-Object -ExpandProperty uniqueKey"') do set uniqueKey=%%i
curl -X POST "http://localhost:32000/Driver/PPBAdvance/Power/Variable/5?DriverUniqueKey=%uniqueKey%"
TIMEOUT /T 1
