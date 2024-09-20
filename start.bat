
rem ===============================================
    cd env
    cd scripts
    activate
    cd ../../
    cd myproject
    python manage.py runserver  
    
rem ===============================================
rem ساختن محیط مجازی
    pip install virtualenv
    virtualenv env 
    cd env
    cd scripts
    activate

rem -----ساختن پروژه -------
    pip install django
    cd ../../
    django-admin startproject myproject
    cd myproject

rem ----- ساختن اپلیکیشن  -------
    python manage.py startapp myapp  
  
rem ----- ساختن جداول و مدلها  ------
python manage.py makemigrations
python manage.py migrate

rem ===============================================

python manage.py runserver




rem ==========================/////////////////////////////***********************
rem ----- نصب درگاه بانکی  -------
pip install git+https://github.com/ali-zahedi/az-iranian-bank-gateways

rem ----- نصب پکیج دریافت تصاویر  -------
python -m pip install Pillow

pytho
rem cd G:\Python\rmbproj\rmbdjango 
rem g:\python\rmbdigikala>
(venv) G:\Python\rmbdigikala\rmbdigikala>python manage.py shell 
from django.contrib.sessions.models import Session 
k=Session.objects.get(pk="u6ip3wlj40741x53xdzltc7iun2nxatv")
rem pk از طریق inspect
rem application>storage>cookies> 127.0.0.1:8000>sessionid
k.get_decoded()

g:\python\rmbdigikala\venv\Scripts\activate.bat  
cd rmbdigikala
python manage.py runserver

python manage.py makemigrations
python manage.py migrate

cd g:\Python\rmbdigikala\rmbdigikala
py -m venv prjdjango

python manage.py createsuperuser

cd g:\Python\rmbproj\rmbdjango\prjdjango\Scripts

@echo off

rem This file is UTF-8 encoded, so we need to update the current code page while executing it
for /f "tokens=2 delims=:." %%a in ('"%SystemRoot%\System32\chcp.com"') do (
    set _OLD_CODEPAGE=%%a
)
if defined _OLD_CODEPAGE (
    "%SystemRoot%\System32\chcp.com" 65001 > nul
)

set VIRTUAL_ENV=G:\Python\rmbproj\rmbdjango\prjdjango

if not defined PROMPT set PROMPT=$P$G

if defined _OLD_VIRTUAL_PROMPT set PROMPT=%_OLD_VIRTUAL_PROMPT%
if defined _OLD_VIRTUAL_PYTHONHOME set PYTHONHOME=%_OLD_VIRTUAL_PYTHONHOME%

set _OLD_VIRTUAL_PROMPT=%PROMPT%
set PROMPT=(prjdjango) %PROMPT%

if defined PYTHONHOME set _OLD_VIRTUAL_PYTHONHOME=%PYTHONHOME%
set PYTHONHOME=

if defined _OLD_VIRTUAL_PATH set PATH=%_OLD_VIRTUAL_PATH%
if not defined _OLD_VIRTUAL_PATH set _OLD_VIRTUAL_PATH=%PATH%

set PATH=%VIRTUAL_ENV%\Scripts;%PATH%
set VIRTUAL_ENV_PROMPT=(prjdjango) 

:END
if defined _OLD_CODEPAGE (
    "%SystemRoot%\System32\chcp.com" %_OLD_CODEPAGE% > nul
    set _OLD_CODEPAGE=
)


cd..

python.exe -m pip install --upgrade pip

py -m pip install django 

django-admin startproject comment

cd G:\Python\rmbproj\rmbdjango\prjdjango\comment

py manage.py startapp comments

rem py manage.py makemigrations --merge

cd G:\Python\rmbdigikala\rmbdigikala\py manage.py makemigrations comments

cd G:\Python\rmbdigikala\rmbdigikala\py manage.py migrate

py -m pip install whitenoise

py manage.py collectstatic

g:\Python\rmbdigikala\rmbdigikala\py manage.py runserver

cd..
cd..
