@echo off
set /p serial="Enter the serial number: "
set SERIAL=%serial%
echo serial_number = "%serial%" > serial_config.py
python combine_script.py %serial%
python setup.py build
xcopy assets build\exe.win-amd64-3.12\assets\ /E /I /Y