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
set tabstop=3
set shiftwidth=3
nnoremap k gk
nnoremap j gj
autocmd BufEnter * lcd %:p:h
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


"################
"# really cool!!!
"################
let underlinecommand="g/^\\w/t.|s/./=/g"
