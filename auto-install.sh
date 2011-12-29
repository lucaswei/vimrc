#!/bin/sh
VIMHOME=~/.vim

die() {
    warn "$1"
    exit 1
}

[ -e "$VIMHOME/vimrc" ] && die "$VIMHOME/vimrc already exists."
[ -e "~/.vim" ] && die "~/.vim already exists."
[ -e "~/.vimrc" ] && die "~/.vimrc already exists."

git clone git://github.com/lucas0412/vimrc.git "$VIMHOME"
cd "$VIMHOME"
git submodule update --init

cd ..
ln -s .vim/vimrc .vimrc

echo "vimrc is installed."

#reference by 
#vgod's auto-install.sh
