# Install Common Vim environment
ln -fs $PWD/vim/vimrc.vim $HOME/.vimrc
ln -fs $PWD/vim/gvimrc.vim $HOME/.gvimrc

# Create Vimfiles Directory
mkdir $HOME/.vim

# Added Local Environment vimfiles Setting
mkdir $HOME/.vim/runtime
touch $HOME/.vim/runtime/vimrc.vim
touch $HOME/.vim/runtime/gvimrc.vim

# Added Local Backup & Swap files Directory
mkdir $HOME/.vim/backup
mkdir $HOME/.vim/swap

# Plugins & Syntax Rules Links
ln -fs $PWD/vim/vimfiles/autoload $HOME/.vim
ln -fs $PWD/vim/vimfiles/colors $HOME/.vim
ln -fs $PWD/vim/vimfiles/compiler $HOME/.vim
ln -fs $PWD/vim/vimfiles/doc $HOME/.vim
ln -fs $PWD/vim/vimfiles/ftdetect $HOME/.vim
ln -fs $PWD/vim/vimfiles/ftplugin $HOME/.vim
ln -fs $PWD/vim/vimfiles/indent $HOME/.vim
ln -fs $PWD/vim/vimfiles/plugin $HOME/.vim
ln -fs $PWD/vim/vimfiles/syntax $HOME/.vim
# EOF
