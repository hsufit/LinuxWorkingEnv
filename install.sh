#!/usr/bin/env bash

VUNDLE_INSTALL_PATH=~/.vim/bundle/Vundle.vim

if [ -d "$VUNDLE_INSTALL_PATH" ]; then
    echo "[Skip]The Vundle plugin already existed in ${VUNDLE_INSTALL_PATH}"
else
    git clone https://github.com/VundleVim/Vundle.vim.git ${VUNDLE_INSTALL_PATH}
fi

