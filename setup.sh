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

ln -sf ${CURRENTDIR}/.emacs.el ${HOME}/

emacsFileList=("init.el" "init_loader" "elisps" "Cask" "share" "plugins")

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

# Omnisharp install
omnisharp_if_not_exist () {
    local dir=$1
    if [ ! -d $dir ]; then
	git clone https://github.com/nosami/OmniSharpServer.git ${EMACSDIR}/plugins/OmniSharpServer
	cd ${EMACSDIR}/plugins/OmniSharpServer && git submodule update --init --recursive && xbuild
    fi
}

omnisharp_if_not_exist ${EMACSDIR}/plugins/OmniSharpServer

# install grunt-init-csharpsolution
grunt-init-csharpsolution_if_not_exist () {
    local dir=$1
    if [ ! -d $dir ]; then
	git clone https://github.com/nosami/grunt-init-csharpsolution.git ~/.grunt-init/csharpsolution
    fi
}

grunt-init-csharpsolution_if_not_exist ${HOME}/.grunt-init
