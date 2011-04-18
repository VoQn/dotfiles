# Zsh
sh zshln.sh

# SKK
ln -fs $PWD/skk/my-jisyo $HOME/.skk-jisyo
mkdir $HOME/.skk
ln -fs $PWD/skk/SKK-JISYO.L $HOME/.skk

# vim
sh vimln.sh

# tmux
ln -fs $PWD/tmux/tmux.conf ~/.tmux.conf

# vimperator
ln -fs $PWD/vimperator/vimperatorrc $HOME/.vimperatorrc
mkdir $HOME/.vimperator/
ln -fs $PWD/vimperator/vimpfiles/color $HOME/.vimperator/color
ln -fs $PWD/vimperator/vimpfiles/plugin $HOME/.vimperator/plugin
