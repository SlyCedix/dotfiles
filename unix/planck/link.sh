#!/bin/sh

mkdir -p qmk_firmware/keyboards/planck/keymaps/slycedix

ln -sf $(pwd)/config.h qmk_firmware/keyboards/planck/keymaps/slycedix/
ln -sf $(pwd)/keymap.c qmk_firmware/keyboards/planck/keymaps/slycedix/
ln -sf $(pwd)/rules.mk qmk_firmware/keyboards/planck/keymaps/slycedix/
