nmap <silent> \ :call ToggleHex()<CR>
" Toggle spell checking on and off with `,s`
let mapleader = ","
nmap <silent> <leader>s :set spell!<CR>
set spelllang=en_us
set laststatus=2
set hidden
set history=50
set ignorecase 
set smartcase
set scrolloff=2
set ruler
set backspace=2
set softtabstop=3
set shiftwidth=3
nnoremap k gk
nnoremap j gj
map <C-j> :bprev
map <C-k> :bnext
autocmd BufEnter * silent! lcd %:p:h:gs/ /\\ /
map - -
map + +
map <F1> ggg?G:g/./m0:set rl!``
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
abbr sn syntax on
:redraw!
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
let underlinecommand="g/^\\w/t.|s/./=/g"
set backup
set backupdir=~/vimfiles/backup
set directory=~/vimfiles/tmp
set scrolloff=5 " keep at least 5 lines above/below
set sidescrolloff=5 " keep at least 5 lines left/right
set statusline=%n\ %<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
