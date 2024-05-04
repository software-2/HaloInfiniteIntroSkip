@echo off
set "file1=C:\XboxGames\Halo Infinite\Content\videos\intro.mp4"
set "file2=C:\Program Files (x86)\Steam\steamapps\common\Halo Infinite\videos\intro.mp4"
set "backupName=introBACKUP.mp4"
set "skipFile=introskip.mp4"

rem Check if file1 exists, if yes, rename it and copy introskip.mp4
if exist "%file1%" (
    ren "%file1%" "%backupName%"
    copy "%~dp0%skipFile%" "%file1:\intro.mp4=%\intro.mp4"
) else (
    rem Check if file2 exists, if yes, rename it and copy introskip.mp4
    if exist "%file2%" (
        ren "%file2%" "%backupName%"
        copy "%~dp0%skipFile%" "%file2:\intro.mp4=%\intro.mp4"
    ) else (
        echo Neither file1 nor file2 found.
    )
)