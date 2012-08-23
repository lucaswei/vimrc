Lucas's .vimrc
==============
`Author: Lucas (lucas.weisr@gmail.com)`

How to install?
---------------
**You should have installed git**

For Linux:

    	wget -o - https://raw.github.com/lucas0412/vimrc/master/auto-install.sh|sh

Manual Install
--------------

1. Clone from github:

    	git clone https://github.com/lucas0412/vimrc.git ~/.vim

2. Update vim submodule:

    	cd ~/.vim
     	git submodule update --init

3.  Make softlink to ~/.vimrc:

    	ln -s ~/.vim/vimrc ~/.vimrc


Used plugin
-----------

* [AutoClose--Alves](https://github.com/vim-scripts/AutoClose--Alves):A auto parenses completion plugin.
* [SingleCompile](SingleCompile):This will detect your programing language and set its corresponding compiler or interpreter.
* [colorSelector](https://github.com/c9s/colorselector.vim):A vim colorscheme picker and test tool, type `:SelectColorS` to show a colors list. Use it to select a fitness colorscheme.

dependency
--------------------

* Exuberant Ctags

screenshot
--------------------
