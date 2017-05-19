set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'sjbach/lusty'
Plugin 'fatih/vim-go'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-scripts/fish.vim'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'

call vundle#end()            " required
filetype plugin indent on    " required

autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
colorscheme adam
syntax on
set background=dark

if $SHELL =~ 'bin/fish'
    set shell=/bin/sh
endif

set clipboard=unnamed

set guifont=Inconsolata-dz\ 16
nmap <C-N><C-N> :set invnumber <CR>
set linebreak
set autoindent
set smartindent
set fileencoding=utf-8
set fileencodings=ucs-bom,utf8,prc
set number

filetype plugin indent on

set ignorecase
set smartcase

set mouse=a

" display whole paragraphs
set display+=lastline

" in insert mode, arrow keys ignore line wrap
inoremap <Down> <C-O>gj
inoremap <Up> <C-O>gk

nnoremap ; :
inoremap jj <Esc>

" Paranoid saving
nnoremap <Space><Space> :w<cr>
vnoremap <Space><Space> <esc>:w<cr>

set grepprg=ack-grep\ -a

set hlsearch
set wildmode=list:longest

highlight ExtraWhitespace ctermbg=red guibg=red
highlight clear SignColumn
highlight LineNr ctermfg=grey

" Always display SignColumn
autocmd BufEnter * sign define dummy
autocmd BufEnter * execute 'sign place 9999 line=1 name=dummy buffer=' . bufnr('')

" Show trailing whitespace:
autocmd Syntax * syn match ExtraWhitespace /\s\+$/
" autocmd Syntax * syn match ExtraWhitespace /\s\+$\|^ \+\| \+\ze\t/

set swapfile
set dir=~/.vimtmp//,/var/tmp//,/tmp//,.

set scrolloff=4

" Disable scrollbars and toolbar
set guioptions+=lrT
set guioptions-=lrT

" Disable menu bar
set guioptions-=m

set backspace=indent,eol,start

set hidden

nmap <silent> <Leader>f :LustyFilesystemExplorer<CR>
nmap <silent> <Leader>r :LustyFilesystemExplorerFromHere<CR>
nmap <silent> <Leader>b :LustyBufferExplorer<CR>
nmap <silent> <Leader>g :LustyBufferGrep<CR>

set wildignore=*.o

set tabstop=4
set shiftwidth=4
set expandtab

let g:session_autosave = 'no'
let g:go_fmt_command = "goimports"

" .tac are Python files
au BufNewFile,BufRead *.tac set ft=python

" less distraction markdown settings
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
autocmd FileType markdown setlocal spell spelllang=en_au
autocmd FileType markdown setlocal wrap nolist linebreak
autocmd FileType markdown setlocal nonumber
autocmd FileType markdown highlight! link FoldColumn Normal
