@echo off
title ZJUT XeLaTeX Template

:start
echo ��ӭʹ�� ZJUT XeLaTeX ��ҵ���ģ��
echo.
echo ʹ�ñ��ű�ֻ��ѡ���Ӧ��ѡ��ɷ��������������ļ�
echo.
echo 1. ������������
echo 2. ���ɿ��ⱨ��
echo 3. �������ķ���
echo 0. ���������ļ�
echo.
set /p num="����������ѡ��: "
if "%num%"=="1" goto literaturereview
if "%num%"=="2" goto proposal
if "%num%"=="3" goto translation
if "%num%"=="0" goto clean
echo �����ѡ��
pause
exit

:literaturereview
cls
call "../clean.bat"
xelatex literaturereview
bibtex literaturereview
xelatex literaturereview
xelatex literaturereview
exit

:proposal
cls
call "../clean.bat"
xelatex proposal
bibtex proposal
xelatex proposal
xelatex proposal
exit

:translation
cls
call "../clean.bat"
xelatex translation
bibtex translation
xelatex translation
xelatex translation
exit

:clean
call "../clean.bat"
exit