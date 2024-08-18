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
cat ${SCRIPT_DIR}/vimrc |grep solarized > /dev/null
if [ $? == 0 ]; then
# source: https://gist.github.com/kurahaupo/6ce0eaefe5e730841f03cb82b061daa2
    echo "Quick true color test for solarize color theme:"
    awk 'BEGIN{
        s="/\\/\\/\\/\\/\\"; s=s s s s s s s s;
        for (colnum = 0; colnum<77; colnum++) {
            r = 255-(colnum*255/76);
            g = (colnum*510/76);
            b = (colnum*255/76);
            if (g>255) g = 510-g;
            printf "\033[48;2;%d;%d;%dm", r,g,b;
            printf "\033[38;2;%d;%d;%dm", 255-r,255-g,255-b;
            printf "%s\033[0m", substr(s,colnum+1,1);
        }
        printf "\n";
    }'
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

