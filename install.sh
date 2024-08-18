#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
VUNDLE_INSTALL_PATH=~/.vim/bundle/Vundle.vim
VIMRC_PATH=~/.vimrc
GITCONFIG_PATH=~/.gitconfig
INPUTRC_PATH=~/.inputrc

if [ -d "$VUNDLE_INSTALL_PATH" ]; then
    echo "[Skip]The Vundle plugin already existed in ${VUNDLE_INSTALL_PATH}"
else
    git clone https://github.com/VundleVim/Vundle.vim.git ${VUNDLE_INSTALL_PATH}
fi

if [ -f "$VIMRC_PATH" ]; then
    echo "[Warning]The vimrc already existed in ${VIMRC_PATH}"
else
    ln -s ${SCRIPT_DIR}/vimrc ~/.vimrc
fi

if [ -f "$GITCONFIG_PATH" ]; then
    echo "[Warning]The gitconfig already existed in ${GITCONFIG_PATH}"
else
    ln -s ${SCRIPT_DIR}/gitconfig ~/.gitconfig
fi

if [ -f "$INPUTRC_PATH" ]; then
    echo "[Warning]The inputrc already existed in ${INPUTRC_PATH}"
else
    ln -s ${SCRIPT_DIR}/inputrc ~/.inputrc
fi

