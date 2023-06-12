set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'nvie/vim-flake8'
Plugin 'flazz/vim-colorschemes'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

if &diff
    set termguicolors
    set t_Co=256
    syntax off
    colorscheme LightDefault
else
    colorscheme industry
endif

set number
set nohlsearch

set splitbelow

set tabstop=4
set expandtab
set autoindent
set shiftwidth=4

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

au BufNewFile,BufRead *.py set tabstop=4  
au BufNewFile,BufRead *.py set shiftwidth=4
au BufNewFile,BufRead *.py set textwidth=120
au BufNewFile,BufRead *.py set expandtab  
au BufNewFile,BufRead *.py set autoindent  
au BufNewFile,BufRead *.py set fileformat=unix  
"Flagging Unnecessary Whitespace
highlight BadWhitespace ctermbg=red guibg=darkred
"With reference to the following, see
"https://vi.stackexchange.com/questions/10897/how-do-i-customize-vimdiff-colors
hi DiffAdd      gui=none    guifg=NONE          guibg=#bada9f
hi DiffChange   gui=none    guifg=NONE          guibg=#e5d5ac
hi DiffDelete   gui=bold    guifg=#ff8080       guibg=#ffb0b0
hi DiffText     gui=none    guifg=NONE          guibg=#e5d5ac
"hi DiffText     gui=none    guifg=NONE          guibg=#8cbee2
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/


