set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Plugin 'altercation/vim-colors-solarized'
"Plugin 'sjl/badwolf'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'ervandew/supertab'
Plugin 'fatih/molokai'
Plugin 'fatih/vim-go'
Plugin 'gmarik/Vundle.vim'
Plugin 'godlygeek/tabular'
Plugin 'groenewege/vim-less'
Plugin 'honza/vim-snippets'
Plugin 'JulesWang/css.vim'
Plugin 'justinj/vim-react-snippets'
Plugin 'justinmk/vim-sneak'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'majutsushi/tagbar'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'mattn/emmet-vim'
Plugin 'mileszs/ack.vim'
Plugin 'mxw/vim-jsx'
Plugin 'myusuf3/numbers.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'Shougo/unite.vim'
Plugin 'SirVer/ultisnips'
Plugin 'sjl/gundo.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tmhedberg/matchit'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-scripts/AutoClose'
Plugin 'vim-scripts/bufkill.vim'
Plugin 'vim-scripts/BufOnly.vim'
Plugin 'vim-scripts/ZoomWin'

call vundle#end()
filetype plugin indent on

" Editor
set background=dark
colo molokai
set expandtab
set hidden " Switch between buffer
set mouse=a
set shiftwidth=4
set tabstop=4
set number

" Syntastic
let g:syntastic_javascript_checkers = ['jsxhint']

" Search
set ic
set is
set hls

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1
set laststatus=2
set t_Co=256

" Auto reload file from disk
au VimEnter WatchForChanges silent!

" Auto open NERDTree
"au VimEnter *  NERDTree | wincmd p

" Keymap
let mapleader=","
nnoremap <F8> :TagbarToggle<CR>
nnoremap <F3> :set hlsearch!<CR>
nmap <F4> :NERDTreeToggle<CR>
set <S-F4>=O1;2S
nmap <S-F4> :NERDTreeFind<CR>
map <C-_> <Plug>NERDCommenterToggle

" YouCompleteMe and UltiSnips keymap
"let g:ycm_key_list_select_completion=['<C-j>', '<Down>']
"let g:ycm_key_list_previous_completion=['<C-k>', '<Up>']

let g:UltiSnipsExpandTrigger="<C-j>"
let g:UltiSnipsJumpForwardTrigger="<C-j>"
let g:UltiSnipsJumpBackwardTrigger="<C-k>"

" File type config
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
