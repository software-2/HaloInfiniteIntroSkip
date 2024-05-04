@echo off
set "file1=C:\XboxGames\Halo Infinite\Content\videos\intro.mp4"
set "file2=C:\Program Files (x86)\Steam\steamapps\common\Halo Infinite\videos\intro.mp4"
set "backupName=introBACKUP.mp4"

rem Check if backup file exists, if yes, undo the changes
if exist "%file1:\intro.mp4=%\%backupName%" (
    del "%file1%"
    ren "%file1:\intro.mp4=%\%backupName%" "intro.mp4"
) else if exist "%file2:\intro.mp4=%\%backupName%" (
    del "%file2%"
    ren "%file2:\intro.mp4=%\%backupName%" "intro.mp4"
) else (
    echo Backup file not found. No changes made.
)