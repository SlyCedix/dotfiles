New-Item -ItemType Directory -Path $env:USERPROFILE/.glzr/zebar -Force

Scoop-Up main nodejs
$env:PATH = "$env:PATH;$env:USERPROFILE\scoop\apps\nodejs\current\bin"
$env:PATH = "$env:PATH;$env:USERPROFILE\scoop\apps\nodejs\current"

npm install -g pnpm

$tmp = New-TempDir
try {
    pushd "$tmp"

    git clone https://github.com/glzr-io/zebar
    pushd zebar

    # cargo add webview2-com-sys

    pnpm install
    pnpm run --filter zebar --filter @zebar/settings-ui build
    cargo +nightly-gnu install zebar --features tauri/custom-protocol,tauri/native-tls --path packages/desktop --locked -Zbuild-std
    Move-Item -Path target/release/WebView2Loader.dll %CARGO_HOME%/bin

    popd

    git clone https://github.com/slycedix/neobrutal-zebar
    pushd neobrutal-zebar

    pnpm install
    pnpm run build 

    if(Test-Path "$PSScriptRoot\..\..\Configs\zebar_windows\.glzr\zebar\neobrutal") {
        Remove-Item -Path "$PSScriptRoot\..\..\Configs\zebar_windows\.glzr\zebar\neobrutal" -Recurse -Force
    }
    Move-Item -Path build -Destination "$PSScriptRoot\..\..\Configs\zebar_windows\.glzr\zebar\neobrutal"

    popd

    $decision = $Host.UI.PromptForChoice('Zebar', 'Create start menu shortcut?', ('&Yes', '&No'), 1)
    if($decision -eq 0) {
        if(Test-Path "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Zebar.lnk") {
            Remove-Item -Path "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Zebar.lnk" -Confirm -Force
        }
        Create-Shortcut $env:CARGO_HOME\bin\zebar "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Zebar"
    }

    popd
} finally {
    cd $PSScriptRoot
    Remove-Item -Path "$tmp" -Force -Recurse
}