@echo off
cd %~dp0

set BACKUP_PATH=F:\backup

set TIME=%time: =0%
set TIME_STAMP=%date:/=%_%TIME:~0,2%%TIME:~3,2%%TIME:~6,2%

echo %~dp0 配下の全ファイル --＞
echo %BACKUP_PATH%\%TIME_STAMP% にコピーします。
choice /M "実施してよろしいですか？"
if errorlevel 2 goto OnExit

mkdir %BACKUP_PATH%\%TIME_STAMP%
xcopy /S/E /EXCLUDE:excludelist.txt . %BACKUP_PATH%\%TIME_STAMP%

:OnExit
echo 処理を終了しました。
cmd /k