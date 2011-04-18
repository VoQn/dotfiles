" VIM RC File

" Utility
" load this file
noremap ,s :so<Space>~/.vimrc<CR>

" Backup and Swap
set backup
set writebackup
set backupdir=~/.vim/backup
set directory=~/.vim/swap

" FileType
syntax enable
filetype indent on
filetype plugin on

" Encoding
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis

" Window
set laststatus=2
set lazyredraw
set title
set showcmd

" Color
set t_Co=256
colorscheme desert

" Buffer
set number
set ruler
set noexpandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set wrap
set showmatch
set cursorline

" Input
set list
set listchars=tab:>.,trail:.,nbsp:%,extends:>,precedes:<
highlight SpecialKey term=underline ctermfg=darkgray guifg=#666666
set backspace=indent,eol,start
set formatoptions+=mM
set autoindent
set smartindent

" Key Bind for Normal Mode
noremap <C-l> gt
noremap <C-h> gT

noremap ,b :buffers<CR>
noremap t :tabnew<Space>

" Key Bind for Insert Mode
" MacVim
if has('gui_macvim')
    imap ∆ <M-j>
    imap ˚<M-k>
    imap ˙<M-h>
    imap ¬ <M-l>
endif
inoremap <M-j> <Down>
inoremap <M-k> <Up>
inoremap <M-h> <Left>
inoremap <M-l> <Right>

" Command
set wildmenu
set wildmode=list:longest
set completeopt=menu,preview,menuone

" Key Bind for Cmode
cnoremap <C-a> <S-LEFT>
cnoremap <C-h> <LEFT>
cnoremap <C-e> <S-RIGHT>
cnoremap <C-l> <RIGHT>
cnoremap <C-j> <DOWN>
cnoremap <C-k> <UP>

" Search
set incsearch
set ignorecase
set smartcase
set hlsearch
set wrapscan


" auto cd command when open file
" au BufEnter * execute ":lcd " . expand("%:p:h")

"
" Plugins
"
" SKK.vim
source ~/.vim/plugin/skk.vim
let skk_jisyo = '~/Dropbox/dotfiles/skk/my-jisyo'
let skk_large_jisyo = '~/Dropbox/dotfiles/skk/SKK-JISYO.L'
let skk_auto_save_jisyo = 1
let skk_keep_state = 0
let skk_egg_like_newline = 1
let skk_show_annotation = 1
let skk_use_face = 1

" neocomplcache.vim
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_dictionary_filetype_lists = {
            \ 'default' : ''
            \ }

inoremap <expr><C-x><C-o> &filetype == 'vim' ? "\<C-x><C-v><C-p>" : neocomplcache#manual_omni_complete()
inoremap <expr><C-h> neocomplcache#smart_close_popup()
inoremap <expr><C-g> neocomplcache#undo_completion()
inoremap <expr><C-l> neocomplcache#complete_common_string()
inoremap <expr><C-y> neocomplcache#close_popup()
inoremap <expr><C-e> neocomplcache#cancel_popup()

" vim: ft=vim
