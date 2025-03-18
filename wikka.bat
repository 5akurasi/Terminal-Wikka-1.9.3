@echo off
chcp 65001 >nul
color 0A
setlocal enabledelayedexpansion

echo ╔╗╔╗╔╗╔══╗╔╗╔══╗╔╗╔══╗╔══╗────╔╗──╔══╗──╔══╗
echo ║║║║║║╚╗╔╝║║║╔═╝║║║╔═╝║╔╗║───╔╝║──║╔╗║──╚═╗║
echo ║║║║║║─║║─║╚╝║──║╚╝║──║╚╝║───╚╗║──║╚╝║──╔═╝║
echo ║║║║║║─║║─║╔╗║──║╔╗║──║╔╗║────║║──╚═╗║──╚═╗║
echo ║╚╝╚╝║╔╝╚╗║║║╚═╗║║║╚═╗║║║║────║║╔╗╔═╝║╔╗╔═╝║
echo ╚═╝╚═╝╚══╝╚╝╚══╝╚╝╚══╝╚╝╚╝────╚╝╚╝╚══╝╚╝╚══╝

:WAIT
set /p user_input=Введите команду: 

if "%user_input%"=="/help command 1" (
    echo.
    echo.
    echo Команды Wikka страница 1
    echo.
    echo /color [цвет]
    echo /bcolor [цвет фона]
    echo /help 
    echo /help color
    echo /help bcolor
    echo /help command
    echo /exit
    echo /say
    echo.
    echo.
)

if "%user_input%"=="/exit" exit

if "%user_input%"=="/color 0" color 0
if "%user_input%"=="/color 1" color 1
if "%user_input%"=="/color 2" color 2
if "%user_input%"=="/color 3" color 3
if "%user_input%"=="/color 4" color 4
if "%user_input%"=="/color 5" color 5
if "%user_input%"=="/color 6" color 6
if "%user_input%"=="/color 7" color 7
if "%user_input%"=="/color 8" color 8
if "%user_input%"=="/color 9" color 9
if "%user_input%"=="/color a" color a
if "%user_input%"=="/color b" color b
if "%user_input%"=="/color c" color c
if "%user_input%"=="/color d" color d
if "%user_input%"=="/color e" color e
if "%user_input%"=="/color f" color f

if "%user_input%"=="/bcolor 0" set "bg_color=0" && call :change_bg_color
if "%user_input%"=="/bcolor 1" set "bg_color=1" && call :change_bg_color
if "%user_input%"=="/bcolor 2" set "bg_color=2" && call :change_bg_color
if "%user_input%"=="/bcolor 3" set "bg_color=3" && call :change_bg_color
if "%user_input%"=="/bcolor 4" set "bg_color=4" && call :change_bg_color
if "%user_input%"=="/bcolor 5" set "bg_color=5" && call :change_bg_color
if "%user_input%"=="/bcolor 6" set "bg_color=6" && call :change_bg_color
if "%user_input%"=="/bcolor 7" set "bg_color=7" && call :change_bg_color
if "%user_input%"=="/bcolor 8" set "bg_color=8" && call :change_bg_color
if "%user_input%"=="/bcolor 9" set "bg_color=9" && call :change_bg_color
if "%user_input%"=="/bcolor a" set "bg_color=a" && call :change_bg_color
if "%user_input%"=="/bcolor b" set "bg_color=b" && call :change_bg_color
if "%user_input%"=="/bcolor c" set "bg_color=c" && call :change_bg_color
if "%user_input%"=="/bcolor d" set "bg_color=d" && call :change_bg_color
if "%user_input%"=="/bcolor e" set "bg_color=e" && call :change_bg_color
if "%user_input%"=="/bcolor f" set "bg_color=f" && call :change_bg_color

if "%user_input%"=="/help color" (
    echo.
    echo Все Цвета терминала Wikka
    echo.
    echo /color 0 - Чёрный
    echo /color 1 - Синий
    echo /color 2 - Зелёный
    echo /color 3 - Голубой
    echo /color 4 - Красный
    echo /color 5 - Пурпурный
    echo /color 6 - Жёлтый
    echo /color 7 - Белый
    echo /color 8 - Серый
    echo /color 9 - Светло-синий
    echo /color a - Светло-зелёный
    echo /color b - Светло-голубой
    echo /color c - Светло-красный
    echo /color d - Светло-пурпурный
    echo /color e - Светло-жёлтый
    echo /color f - Светло-белый
    echo.
    echo.
)

if "%user_input%"=="/help bcolor" (
    echo.
    echo Все Цвета фона терминала Wikka
    echo.
    echo /bcolor 0 - Чёрный
    echo /bcolor 1 - Синий
    echo /bcolor 2 - Зелёный
    echo /bcolor 3 - Голубой
    echo /bcolor 4 - Красный
    echo /bcolor 5 - Пурпурный
    echo /bcolor 6 - Жёлтый
    echo /bcolor 7 - Белый
    echo /bcolor 8 - Серый
    echo /bcolor 9 - Светло-синий
    echo /bcolor a - Светло-зелёный
    echo /bcolor b - Светло-голубой
    echo /bcolor c - Светло-красный
    echo /bcolor d - Светло-пурпурный
    echo /bcolor e - Светло-жёлтый
    echo /bcolor f - Светло-белый
    echo.
    echo.
)

if "%user_input%"=="/help" (
    echo.
    echo Что умеет Wikka?
    echo.
    echo 1. Wikka умеет понимать вас
    echo 2. Wikka может помочь с кодом
    echo 3. Wikka хорошо подходит для персонализации
    echo 4. Wikka это версия умного терминала
    echo.
    goto WAIT
)

if "%user_input%"=="/say" (
    set /p message="Введите сообщение: "
    echo !message!
)

goto WAIT

:change_bg_color
color %bg_color%
goto WAIT
