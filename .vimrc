syntax on
syntax enable

set number

set shiftwidth=4
set tabstop=4
set expandtab
filetype indent on

set ruler
set wrap
"set textwidth=120
set formatoptions+=t

set mouse=a
set ttymouse=xterm2

"preserve line number
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

"use tab for makefile
autocmd FileType make setlocal noexpandtab
autocmd FileType tex setlocal spell spelllang=en_us
autocmd FileType txt setlocal spell spelllang=en_us
autocmd FileType tex filetype indent off
autocmd FileType sv setlocal indent off

"2 space tabs for ruby
autocmd FileType ruby setlocal shiftwidth=2
autocmd FileType ruby setlocal tabstop=2

"backups in special directory
set backupdir^=~/.vim_backup

"swap files in special directory
set dir^=~/.vim_backup//

" buffer switching using arrows
:nnoremap <D-right> :tabn<CR>
:nnoremap <M-right> :tabn<CR>
:nnoremap <D-left> :tabp<CR>
:nnoremap <M-left> :tabp<CR>

colorscheme elflord
set cursorline
"hi CursorLine NONE ctermbg=darkmagenta

if filereadable(expand('~/.local_vimrc'))
	source ~/.local_vimrc
endif

:nnoremap gf <C-W>gf

set showmatch
set smartcase

"set foldmethod=indent
"nnoremap <Space> za
"au BufRead * normal zR

set nofoldenable
