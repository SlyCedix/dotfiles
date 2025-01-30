New-Item -ItemType Directory -Path $env:USERPROFILE/.glzr/glazewm -Force

$tmp = New-TempDir
try {
    pushd $tmp
    git clone https://github.com/glzr-io/glazewm 
    pushd glazewm

    cargo +nightly-gnu install wm --path packages/wm --locked
    cargo +nightly-gnu install wm-cli --path packages/wm-cli --locked
    cargo +nightly-gnu install wm-watcher --path packages/wm-watcher --locked

    popd

    $decision = $Host.UI.PromptForChoice('GlazeWM', 'Create start menu shortcut?', ('&Yes', '&No'), 1)
    if($decision -eq 0) {
        if(Test-Path "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\glazewm.lnk") {
            Remove-Item -Force -Path "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\glazewm.lnk"
        }
        Create-Shortcut $env:CARGO_HOME\bin\glazewm "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\glazewm"
    }

    $decision = $Host.UI.PromptForChoice('GlazeWM', 'Launch at startup?', ('&Yes', '&No'), 1)
    if($decision -eq 0) {
        if(Test-Path "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\glazewm.lnk") {
            Remove-Item -Force -Path "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\glazewm.lnk"
        }
        Create-Shortcut $env:CARGO_HOME\bin\glazewm "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\glazewm"
    }

    popd
} finally {
    cd $PSScriptRoot
    Remove-Item -Path "$tmp" -Force -Recurse
}