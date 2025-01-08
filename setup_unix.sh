#! /bin/bash

if ! command -v cargo 2>&1 >/dev/null then
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
    export PATH="$PATH:$HOME/.cargo/bin"
fi

if ! command -v tuckr 2>&1 >/dev/null then
    cargo install tuckr --git https://github.com/RaphGL/Tuckr.git
fi

tuckr rm *
tuckr set * -fy
tuckr add * -fy