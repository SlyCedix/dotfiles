#!/bin/sh

mkdir -p qmk_firmware/keyboards/planck/keymaps/slycedix

ln -s $(pwd)/config.h qmk_firmware/keyboards/planck/keymaps/slycedix/
ln -s $(pwd)/keymap.c qmk_firmware/keyboards/planck/keymaps/slycedix/
ln -s $(pwd)/rules.mk qmk_firmware/keyboards/planck/keymaps/slycedix/
