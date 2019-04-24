export PATH=~/.local/bin:$PATH

ZSH_TMUX_AUTOSTART=true
ZSH_TMUX_AUTOCONNECT=false

POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="┏━"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="┗┫"
# POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR="\ue0c7 "
# POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR='\ue0c7 '
# POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR="\ue0c6 "
# POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR='\ue0c6 '
POWERLEVEL9K_BATTERY_STAGES=(
    $'\uf244 ' $'\uf243 ' $'\uf242 ' $'\uf241 ' $'\uf240 '
#    $'▏    ▏' $'▎    ▏' $'▍    ▏' $'▌    ▏' $'▋    ▏' $'▊    ▏' $'▉    ▏' $'█    ▏'
#    $'█▏   ▏' $'█▎   ▏' $'█▍   ▏' $'█▌   ▏' $'█▋   ▏' $'█▊   ▏' $'█▉   ▏' $'██   ▏'
#    $'██   ▏' $'██▎  ▏' $'██▍  ▏' $'██▌  ▏' $'██▋  ▏' $'██▊  ▏' $'██▉  ▏' $'███  ▏'
#    $'███  ▏' $'███▎ ▏' $'███▍ ▏' $'███▌ ▏' $'███▋ ▏' $'███▊ ▏' $'███▉ ▏' $'████ ▏'
#    $'████ ▏' $'████▎▏' $'████▍▏' $'████▌▏' $'████▋▏' $'████▊▏' $'████▉▏' $'█████▏'
   )
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status context root_indicator ssh anaconda dir_writable dir vcs) # os_icon
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vi_mode background_jobs disk_usage ram )# date time battery
# POWERLEVEL9K_ANACONDA_LEFT_DELIMITER=(\{)
# POWERLEVEL9K_ANACONDA_RIGHT_DELIMITER=(\})
ZSH_THEME="powerlevel9k/powerlevel9k"

PROJECT_PATHS=(~/Projects)

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="dd/mm/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

fpath+=${ZDOTDIR:-~}/.zsh_functions
fpath+=~/.zfunc

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
   dnf

   git
   github
   gitignore

   zsh-nvm
   node
   npm

   # ruby
   # gem

   extract
   vi-mode
   command-not-found
   colored-man-pages
   common-aliases
   copyfile
   copydir
   compleat
   cp
   sudo
   web-search
   history
   pj

   httpie
   docker
   tmux
   vscode

   python
   pip
   
   zsh-syntax-highlighting
)

pk () {
    if [ $1 ] ; then
        case $1 in
            tbz)        tar cjvf $2.tar.bz2 $2      ;;
            tarbz2)     tar cjvf $2.tar.bz2 $2      ;;
            tar.bz2)    tar cjvf $2.tar.bz2 $2      ;;
            tgz)        tar czvf $2.tar.gz  $2      ;;
            targz)      tar czvf $2.tar.gz  $2      ;;
            tar.gz)     tar czvf $2.tar.gz  $2      ;;
            tar)        tar cpvf $2.tar  $2         ;;
            bz2)        bzip $2                     ;;
            gz)         gzip -c -9 -n $2 > $2.gz    ;;
            zip)        zip -r $2.zip $2            ;;
            7z)         7z a $2.7z $2               ;;
            *)          echo "'$1' cannot be packed via pk()";;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

# Path to your oh-my-zsh installation.
export ZSH="/home/random/.oh-my-zsh"

source $ZSH/oh-my-zsh.sh

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=$HISTSIZE
# setopt appendhistory autocd beep extendedglob nomatch notify
# bindkey -v
# bindkey "^R" history-incremental-search-backward
# set -o vi
# End of lines configured by zsh-newuser-install# pack into archive

# source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# # added by travis gem
# [ -f /home/danai/.travis/travis.sh ] && source /home/danai/.travis/travis.sh

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias ll="exa -hgl --git --color=always"
alias la="exa -hgla --git --color=always"
alias ls="exa -hglG --git --color=always"
alias l="exa -hglG --git --color=always"
alias ltree="exa --tree --level=2 --long --color=always"
alias alacritty.config="$EDITOR ~/.config/alacritty/alacritty.yml"

# miniconda3 support
export PATH=/home/danai/.conda/envs:$PATH

# added by Miniconda3 4.5.12 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/home/random/miniconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/home/random/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/random/miniconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/home/random/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   # on ssh
  export EDITOR='nvim'
else
   # locally
  export EDITOR='code'
fi



# You may need to manually set your language environment
export LANG=en_US.UTF-8

# export MANPATH="/usr/local/man:$MANPATH"