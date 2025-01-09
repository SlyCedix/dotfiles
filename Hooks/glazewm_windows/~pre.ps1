New-Item -ItemType Directory -Path $env:USERPROFILE/.glzr/glazewm -Force

$tmp = New-TempDir
cd $tmp
git clone https://github.com/glzr-io/glazewm 
pushd glazewm

cargo +nightly-gnu install wm --path packages/wm --features no_console --locked
cargo +nightly-gnu install watcher --path packages/watcher --features no_console --locked

popd

Remove-Item -Force -Path "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\glazewm.lnk"
Remove-Item -Force -Path "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\glazewm.lnk"

Create-Shortcut $env:CARGO_HOME\bin\glazewm "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\glazewm"
Create-Shortcut $env:CARGO_HOME\bin\glazewm "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\glazewm"

Remove-Item -Path "$tmp" -Force -Recurse