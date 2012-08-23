Lucas's .vimrc
==============
`Author: Lucas (lucas.weisr@gmail.com)`

How to install?
---------------
**You should have installed git**

For Linux:

    	wget -O - https://raw.github.com/lucas0412/vimrc/master/auto-install.sh|sh

> You should have installed:
>     * wget
>     * git
>     * /bin/sh

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
* [neocomplcache](https://github.com/Shougo/neocomplcache):A auto completion reference list, when you are in insert mode and type code, this will select fetched words under your cursor.
* [nerdtree](https://github.com/scrooloose/nerdtree):File management plugin for vim. It can help browse file during using vim, and help you to `:tabe` `:sp` `:vsp` the file.
* [snipmate](https://github.com/msanders/snipmate.vim):Quick code snippet completion. It has a huge library support for snippet. You can also write your own key type map to a  complete code.
* [tagbar](https://github.com/majutsushi/tagbar):**depend on Exuberant Ctags** Help you to browse classes and member function.
* [vim-easymotion](https://github.com/Lokaltog/vim-easymotion):Useful plugin to quick cursor moving:
    1. Set a leader key.
    2. Call vim default moving key `Ex: e, w, b`
    3. Pick up word's header charactor
    4. Move to there!
* [vim-fugitive](https://github.com/tpope/vim-fugitive):A plugin help you to use git, during using vim.
* [vim-markdown](https://github.com/hallison/vim-markdown):Markdown syntax, snipmate,etc...
* [vim-powerline](https://github.com/Lokaltog/vim-powerline):Beautiful status line. Have many information with status bar. And, it can change color when you change vim-mode XD.

Command and Hotkey
--------------------

###function key###

* \<F2\>:Nerdtree
* \<F3\>:TagBar
* \<F5\>:cp<CR>
* \<F6\>:cn<CR>
* \<F8\>:SingleCompile
* \<F9\>:SingleCompileRun

###leader key###

* \<Leader\>q:q
* \<Leader\>c:SelectColorS

###Self defined command###

* :C :cancle search and highlight

dependency
--------------------

* [Exuberant Ctags](Exuberant Ctags)

screenshot
--------------------

![screenshot1](/screenshot/screenshot.png)
