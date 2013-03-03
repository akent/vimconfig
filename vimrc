set nocompatible
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
colorscheme adam
syntax on
set background=dark
set guifont=Inconsolata-dz\ 16
nmap <C-N><C-N> :set invnumber <CR>
set linebreak
set autoindent
set smartindent
set fileencoding=utf-8
set fileencodings=ucs-bom,utf8,prc

call pathogen#infect()
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

set hidden

nmap <silent> <Leader>f :LustyFilesystemExplorer<CR>
nmap <silent> <Leader>r :LustyFilesystemExplorerFromHere<CR>
nmap <silent> <Leader>b :LustyBufferExplorer<CR>
nmap <silent> <Leader>g :LustyBufferGrep<CR>

set wildignore=*.o

set tabstop=4
set shiftwidth=4
set expandtab

" .tac are Python files
au BufNewFile,BufRead *.tac set ft=python
