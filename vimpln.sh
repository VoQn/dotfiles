# Install Common Vimperator environment
ln -fs $PWD/vimperator/vimperatorrc $HOME/.vimperatorrc

# Create Vimperator files Directory
mkdir $HOME/.vimperator/

# Touch Local Vimperator Setting
touch $HOME/.vimperator/vimperatorrc.vimp

# Plugins & ColorScheme
ln -fs $PWD/vimperator/vimpfiles/color $HOME/.vimperator/color
ln -fs $PWD/vimperator/vimpfiles/plugin $HOME/.vimperator/plugin
