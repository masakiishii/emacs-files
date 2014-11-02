#!/bin/bash


mkdir_if_not_exist () {
    local dir=$1
    if [ ! -d $dir ]; then
        mkdir -p $dir
    fi
}

# Emacs
mkdir_if_not_exist ~/.emacs.d

EMACSDIR=${HOME}/.emacs.d
CURRENTDIR=`pwd`

cp ${CURRENTDIR}/.emacs.el ${HOME}/

emacsFileList=("init.el" "init_loader" "elisps" "Cask" "share")

for i in ${emacsFileList[*]}
do
    ln -sf ${CURRENTDIR}/$i ${EMACSDIR}
done

# install elisp
cd ${EMACSDIR} && cask install

