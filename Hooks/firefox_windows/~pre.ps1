Scoop-Up extras firefox
cd $PSScriptRoot\..\..\Configs\firefox_windows\scoop\persist\firefox\profile

irm https://github.com/arkenfox/user.js/raw/master/updater.bat > "updater.bat"

& ".\updater.bat" -unattended