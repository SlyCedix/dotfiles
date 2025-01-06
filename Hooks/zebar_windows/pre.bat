pause

mkdir %USERPROFILE%\.glzr
mkdir %USERPROFILE%\.glzr\glazewm
mkdir %USERPROFILE%\.glzr\zebar

pause

cd /d %~dp0
cd neobrutal-zebar
git pull
call npm i
call npm run build
call rmdir /s /q ..\..\..\Configs\zebar_windows\.glzr\zebar\neobrutal 
call move build ..\..\..\Configs\zebar_windows\.glzr\zebar\neobrutal