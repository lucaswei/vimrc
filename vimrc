"command setting{
	"auto call the file to initialize file
		autocmd BufNewFile * silent! 0r ~/.vim/template/template.%:e
	
    "set color display to 256 
        set t_Co=256

	"split windows below or right beside the current window
		set splitbelow
		set splitright
	
	"no compatiable to old vi
		set nocompatible

	"auto-indent 
		set smartindent
        autocmd FileType python set nosmartindent
		set autoindent

	"always dark background
		set bg=dark

	"set undo file enable and directory
		set undofile
		set undodir=~/.vim-undofile

	"set code to be colorful
		:syntax on

	"enable number beside window
		"set nonu
		set number

	"set shift & tab's width to be 4{
		set softtabstop=4
		set shiftwidth=4
		set tabstop=4
        "set tab to space
		set expandtab
	"}
	
	"set folding method{
		set foldmethod=syntax
		set foldlevel=10
	"}
	
	"system clipboard
		set clipboard+=unnamed

	"high light search item
		set hls

	"ignorecase (upper or lower case)
		set ic

	"Always show current positions along the bottom
		set ru

	" highlight the current column
		set cursorline

	"set mouse enable
		set mouse=a

	"set wildmenu{
		set wildmenu
		set wildmode=list:full
		set wildignore=*.o,*.class,*.pyc
	"}

	"encoding
		set fileencodings=utf-8,big5,latin1,utf-16,utf-16le
		set fileencoding=utf-8
		set encoding=utf-8
		set termencoding=utf-8

	"set status line
		set laststatus=2

	"filetype
		filetype on
		filetype plugin on
		filetype indent on

    "set vim using the same system buffer for copy/paste
    set clipboard=unnamedplus
"}

" file detect cmd{
	" c
		autocmd Filetype c,cpp nmap <F7> :w<CR> :make<CR>
"}

" Hot key mapping {
    "color selector 
        nmap <Leader>c :SelectColorS<CR>
        nmap <Leader>q :q<CR>

	"Toggle nerd tree
		:noremap <F2> :NERDTreeToggle<ENTER>
	"Toggle Tagbar
		:noremap <F3> :TagbarToggle<ENTER>

    "FuzzyFinder
        noremap ff <esc>:FufFile<cr>
        noremap fcd <esc>:FufDir<cr>
        noremap fba <esc>:FufBookmarkFileAdd<cr>
        noremap fbm <esc>:FufBookmarkFile<cr>

	"prev & next error
		:nmap <F5> :cp<CR>
		:nmap <F6> :cn<CR>
    
    "SingleCompile quick key mapping
        nmap <F8> :SCCompile<CR>
        nmap <F9> :SCCompileRun<CR>

	"quickly shift that line UP or DOWN
		:inoremap <C-j> <ESC>:m+<ENTER>i
		:inoremap <C-k> <ESC>:m-2<ENTER>

	"switch windows hot key
		:nnoremap <C-h> <C-w>h
		:nnoremap <C-l> <C-w>l
		:nnoremap <C-j> <C-w>j
		:nnoremap <C-k> <C-w>k

	"Don't show pyc files
		let NERDTreeIgnore=['\.pys$']
	
	"command mapping
		command C let @/=""
"}

"===========================================
"plug-in
"===========================================
"vim-indent-guides{
" open by <leader>ig
    let g:indent_guides_auto_colors = 0
    let g:indent_guides_start_level = 2
    let g:indent_guides_guide_size = 1
    autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=235
    autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=238
"}

"ctags{
    let g:tagbar_sort = 0
    let g:tagbar_autofocus = 1
	"set tags=$HOME/.ctags
"}

"pthogen{
	call pathogen#infect('bundle')
"}

"Easy motion{
	let g:EasyMotion_leader_key='\'
"}

"NeoComplcache{
	" Disable AutoComplPop.
	let g:acp_enableAtStartup = 0
	" Use neocomplcache.
	let g:neocomplcache_enable_at_startup = 1
	" Use smartcase.
	let g:neocomplcache_enable_smart_case = 1
	" Use camel case completion.
	let g:neocomplcache_enable_camel_case_completion = 1
	" Use underbar completion.
	let g:neocomplcache_enable_underbar_completion = 1
	" Set minimum syntax keyword length.
	let g:neocomplcache_min_syntax_length = 3
	let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

	" Define dictionary.
	let g:neocomplcache_dictionary_filetype_lists = {
		\ 'default' : '',
		\ 'vimshell' : $HOME.'/.vimshell_hist',
		\ 'scheme' : $HOME.'/.gosh_completions'
		\ }

	" Define keyword.
	if !exists('g:neocomplcache_keyword_patterns')
	  let g:neocomplcache_keyword_patterns = {}
	endif
	let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

	" Plugin key-mappings.
	imap <C-k>     <Plug>(neocomplcache_snippets_expand)
	smap <C-k>     <Plug>(neocomplcache_snippets_expand)
	inoremap <expr><C-g>     neocomplcache#undo_completion()
	inoremap <expr><C-l>     neocomplcache#complete_common_string()

	" SuperTab like snippets behavior.
	"imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"

	" Recommended key-mappings.
	" <CR>: close popup and save indent.
	inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
	" <TAB>: completion.
	inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
	" <C-h>, <BS>: close popup and delete backword char.
	inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
	inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
	inoremap <expr><C-y>  neocomplcache#close_popup()
	inoremap <expr><C-e>  neocomplcache#cancel_popup()

	" AutoComplPop like behavior.
	"let g:neocomplcache_enable_auto_select = 1

	" Shell like behavior(not recommended).
	"set completeopt+=longest
	"let g:neocomplcache_enable_auto_select = 1
	"let g:neocomplcache_disable_auto_complete = 1
	"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<TAB>"
	"inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"

	" Enable omni completion.
	autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
	autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
	autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
	autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
	autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

	" Enable heavy omni completion.
	if !exists('g:neocomplcache_omni_patterns')
	  let g:neocomplcache_omni_patterns = {}
	endif
	let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
	"autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
	let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
	let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
	let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'
"}
