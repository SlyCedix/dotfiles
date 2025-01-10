winget install Microsoft.PowerShell --scope=user

pwsh -Command "Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser"
pwsh -Command "irm https://get.scoop.sh | iex"

set PATH = %PATH%;%USERPROFILE%\scoop\shims

call scoop bucket add main

call scoop install main/git
git config --global credential.helper manager
REG IMPORT %USERPROFILE%\scoop\apps\git\current\install-context.reg
REG IMPORT %USERPROFILE%\scoop\apps\git\current\install-file-associations.reg

call scoop install main/msys2
%USERPROFILE%\scoop\apps\msys2\current\usr\bin\bash -lc "exit"
%USERPROFILE%\scoop\apps\msys2\current\usr\bin\bash -lc "yes | pacman -Syu"
%USERPROFILE%\scoop\apps\msys2\current\usr\bin\bash -lc "yes | pacman -S mingw-w64-ucrt-x86_64-gcc mingw-w64-ucrt-x86_64-llvm"

call scoop install main/rustup
set PATH=%PATH%;%USERPROFILE%\scoop\apps\rustup\current\.cargo\bin\

rustup toolchain install nightly-gnu
rustup default nightly-gnu
rustup target add x86_64-pc-windows-gnu
rustup target add x86_64-pc-windows-gnullvm
rustup component add rust-src

cargo install tuckr --git https://github.com/RaphGL/tuckr.git
tuckr rm *
tuckr add powershell

pwsh -Command "tuckr set * -fy"
pwsh -Command "tuckr add * -fy"
