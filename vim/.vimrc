au BufEnter * silent! lcd %:p:h:gs/ /\\ /
let mapleader = ","

imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
imap <up> <nop>
map + +
map - -
map <C-j> :bprev
map <C-k> :bnext
map <F1> ggg?G:g/./m0:set rl!``
map <down> <nop>
map <left> <nop>
map <right> <nop>
map <up> <nop>
nmap <silent> <leader>s :set spell!<CR>
nmap <silent> \ :call ToggleHex()<CR>
nnoremap j gj
nnoremap k gk

set spelllang=en_us
set backspace=2
set backup
set backupdir=~/vimfiles/backup
set directory=~/vimfiles/tmp
set hidden
set history=50
set ignorecase 
set laststatus=2
set ruler
set scrolloff=2
set scrolloff=5 " keep at least 5 lines above/below
set shiftwidth=3
set sidescrolloff=5 " keep at least 5 lines left/right
set smartcase
set softtabstop=3
set statusline=%n\ %<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

function! ToggleHex()
if !exists("g:Togglehexvar")
 let g:Togglehexvar=0
endif
if g:Togglehexvar==0
 :%! xxd
 :let g:Togglehexvar=1
else
 :%! xxd -r
 :let g:Togglehexvar=0
endif
endfunction

:redraw!
