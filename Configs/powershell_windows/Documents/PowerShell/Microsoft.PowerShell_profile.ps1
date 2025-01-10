oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\catppuccin_macchiato.omp.json" | Invoke-Expression
$env:PATH = "$env:PATH;$env:USERPROFILE\.bin"
$env:PATH = "$env:PATH;$env:USERPROFILE\scoop\apps\msys2\current\ucrt64\bin"