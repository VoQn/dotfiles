# Install Common Emulator Environment
# zsh
ln -fs $PWD/zsh/zshrc.sh $HOME/.zshrc
mkdir $HOME/.zsh/

# Add Local History file Directory
touch $HOME/.zsh/history
touch $HOME/.zsh/compdump

# Common Environmental Variables
ln -fs $PWD/zsh/env_common.sh $HOME/.zsh/env_common.sh

# Local Environmental Variables Source
touch $HOMe/.zsh/env.sh

# EOF
