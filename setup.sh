#!/bin/zsh

mkdir_if_not_exist () {
    local dir=$1
    if [ ! -d $dir ]; then
        mkdir -p $dir
    fi
}

# Emacs directory
mkdir_if_not_exist ~/.emacs.d

EMACSDIR=${HOME}/.emacs.d
CURRENTDIR=`pwd`


emacsFileList=("init.el" "Cask" "share")

for i in ${emacsFileList[*]}
do
    ln -sf ${CURRENTDIR}/$i ${EMACSDIR}
done

# cask install
cask_if_not_exist () {
    local dir=$1
    if [ ! -d $dir ]; then
	curl -fsSkL https://raw.github.com/cask/cask/master/go | python
    fi
}

cask_if_not_exist ~/.cask

# install elisp
cd ${EMACSDIR} && cask install

