" Key Binding
noremap ,s :source<Space>~/.vimrc<CR>:source<Space>~/.gvimrc<CR>

" Color
set t_Co=256
colorscheme desert
highlight SpecialKey term=underline ctermfg=darkgray guifg=#666666

" GUI
set guioptions=aceimgtbpF
set columns=80
set lines=60

if has('gui_macvim')
    set transparency=5
endif

" Font
set guifont=Inconsolata:h18
set guifontwide=MigMix\ 2P:h18
