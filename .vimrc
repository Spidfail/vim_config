" Mapping leader key on space
" default : '\'
" let mapleader=" "


" Basic configuration : mouse, better indent and width,
" symboles to display tabs
syntax on
set mouse=a
set autoindent
set tabstop=4
set shiftwidth=4
set noexpandtab
set list lcs=tab:\|\ 

" ' It turns on detection, plugin and indent at once. '
"  see -> :help :filetype-overview
filetype plugin indent on
" Enable Omnifunc.
" Can works out of the box (Javascript, CSS, HTML),
" or it can need tags : ctags files
set omnifunc=syntaxcomplete#Complete

" Line number management :
" Set number increase by default,
" Set relative number only in Insert (i, I, a, A) mode
set number
autocmd InsertEnter * :set relativenumber 
autocmd InsertLeave * :set norelativenumber

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""PLUGIN PART""""""""""""""""""""""""""""""""""""""""""""""""

" " It slows a little bit the start but worth it for beginners
" Install vim-plug if not found
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

Plug 'mhinz/vim-startify'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-syntastic/syntastic'
Plug 'airblade/vim-gitgutter'

call plug#end()

" Set theme to vim
colorscheme gruvbox 

" " Nerdtree Parameters
" Nerdtree keys mapping
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" Opening Nerdtree at launch
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

 " Path to directory where library can be found
let g:clang_library_path='/usr/local/opt/llvm/lib/libclang.dylib'

if exists(':SyntasticCheck')
	" Syntastic recommended options
	set statusline+=%#warningmsg#
	set statusline+=%{SyntasticStatuslineFlag()}
	set statusline+=%*
	let g:syntastic_always_populate_loc_list = 1
	let g:syntastic_auto_loc_list = 1
	let g:syntastic_check_on_open = 1
	let g:syntastic_check_on_wq = 0

	" Syntastic C++ options
	let g:syntastic_cpp_compiler = 'clang++'
	let g:syntastic_cpp_compiler_options = ' -stdlib=libc++ -Wall -Werror -Wextra'
	let g:syntastic_check_on_open=1
	let g:syntastic_enable_signs=1
	let g:syntastic_cpp_check_header = 1
	let g:syntastic_cpp_remove_include_errors = 1
	let g:syntastic_c_remove_include_errors = 1
	let g:syntastic_c_include_dirs = ['../../../include', '../../include','../include','./include']
endif
