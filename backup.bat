@echo off
cd %~dp0

set BACKUP_PATH=F:\backup

set TIME=%time: =0%
set TIME_STAMP=%date:/=%_%TIME:~0,2%%TIME:~3,2%%TIME:~6,2%

echo %~dp0 �z���̑S�t�@�C�� --��
echo %BACKUP_PATH%\%TIME_STAMP% �ɃR�s�[���܂��B
choice /M "���{���Ă�낵���ł����H"
if errorlevel 2 goto OnExit

mkdir %BACKUP_PATH%\%TIME_STAMP%
xcopy /S/E /EXCLUDE:excludelist.txt . %BACKUP_PATH%\%TIME_STAMP%

:OnExit
echo �������I�����܂����B
cmd /k