@echo off

set "qktDir=%homepath%\AppData\Roaming\TrainPlayer\Subroutines\QuickKeys\"
xcopy %cd% %qktDir% /H /S /C /Y

set "dksDir=%homepath%\AppData\Roaming\TrainPlayer\Subroutines\QuickKeys\dkSupport\"
set "dktDir=%homepath%\AppData\Roaming\TrainPlayer\Cartypes\Defaults"
xcopy %sDir% %tDir% /H /S /C /Y

md "%homepath%\AppData\Roaming\TrainPlayer\Reports"

wmic path win32_processor get CurrentClockSpeed, DeviceID, MaxClockSpeed, Name, NumberOfCores /format:LIST |more > %homepath%\AppData\Roaming\TrainPlayer\Reports\ProcessorInfo.txt