# ZSH RC

# Enviromental Variables
export ZSH=$HOME/.zsh
source $ZSH/env_common.sh
source $ZSH/env.sh

# complete
autoload -U compinit
compinit -d $ZSH/compdump
setopt complete_aliases

# autoload predict-on
# predict-on

# look and feel
autoload -U colors
colors

setopt prompt_subst

case ${UID} in
0)
    PROMPT="%B%{${fg[red]}%}#%{${reset_color}%}%b "
    PROMPT2="%B%{${fg[red]}%}%_#%{${reset_color}%}%b "
    RPROMPT="%B[%/] (%D %T)"
    SPROMPT="%B%{${fg[red]}%}%r is correct? [n,y,a,e]:%{${reset_color}%}%b "
    [ -n "{REMOTEHOST}${SSH_CONNECTION}" ] &&
            PROMPT="%B%{${fg[grey]}%}%n@%m ${PROMPT}"
    ;;
*)
    PROMPT="%B%{${fg[cyan]}%}$%{${reset_color}%}%b "
    PROMPT2="%B%{${fg[cyan]}%}%_$%{${reset_color}%}%b "
    RPROMPT="%B%{${fg[cyan]}%}%~ %{${fg[grey]}%}(%D{%m/%d %H:%M})%b"
    SPROMPT="%B%{${fg[cyan]}%}%r is correct? [n,y,a,e]:%{${reset_color}%}%b "
    [ -n "${REMOTEHOST}${SSH_CONNECTION}" ] &&
            PROMPT="%B%{${fg[grey]}%}%n@%m ${PROMPT}"
    ;;
esac

case "${TERM}" in
kterm*|xterm*)
    premod() {
        echo -ne "\033]0;${USER}@{HOST%%.*}:${PWD}\007"
    }
    export LSCOLORS=exfxcxdxbxegedabagacad
    export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:su=41;sg=46;30:ow=43;30'
    zstyle ':completion:*' list-colors \
        'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'
    ;;
esac

# Function
find-grep () { find . -type f -print | xargs grep -n --binary-files=without-match $@ }
function chpwd() { ls }

# Alias
alias ls='ls -GF'
alias la='ls -Ga'
alias ll='ls -GlaF'

# History
HISTFILE=$ZSH/history
HISTSIZE=10000
SAVEHIST=10000

setopt extended_history
setopt append_history
setopt hist_no_store
setopt hist_reduce_blanks
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt share_history

# always pushd when call "cd" command
setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups
setopt correct

# Listup Compiration Items
setopt auto_menu
setopt auto_list
setopt list_packed

# Compiration --prefix=* ...
setopt magic_equal_subst

# 8 bit
setopt print_eight_bit

# EOF
