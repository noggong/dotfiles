# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/mhjeon/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions git-flow-completion docker)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias v="nvim"
alias vim="nvim"
alias t="tmux"
alias c="clear"
alias e="exit"
alias pip="pip3"
alias p="python"
alias vn="vim -u NONE -N"

# Vim default 대신 Vim 8 실행
export PATH=/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

# Syntax-highlighting 활성화
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# command prompt에서 username 변경(https://github.com/robbyrussell/oh-my-zsh/issues/2033)
POWERLEVEL9K_ALWAYS_SHOW_USER=true
POWERLEVEL9K_CONTEXT_TEMPLATE="%n"

# pyenv 관련(https://jiyeonseo.github.io/2016/07/27/install-pyenv/) 
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# pyenv-virtualenv(https://jiyeonseo.github.io/2016/07/27/install-pyenv/)
eval "$(pyenv virtualenv-init -)"
source /usr/local/opt/autoenv/activate.sh

# http://blog.nacyot.com/articles/2015-12-09-incremental-search-tool-peco/
# shell history size 늘리기
HISTSIZE=100000000
SAVEHIST=100000000

# OSX zsh에서 페코로 명령어 히스토리 검색하고 실행하기
# http://blog.nacyot.com/articles/2015-12-09-incremental-search-tool-peco/
source ~/.zsh/peco-history.zsh

# PATH to rabbitmq used for celery on modernlab
PATH=$PATH:/usr/local/sbin

# HOMEBREW_GITHUB_API_TOKEN
export HOMEBREW_GITHUB_API_TOKEN="72d7885c8ef9bc3ad85826f223547869f7419318"

# Set typora as default markdown editor
alias typora="open -a typora"

# zshrc-autosuggest bindkey
bindkey '^ ' autosuggest-accept

# Go PATH 설정
export GOPATH=$HOME/go
PATH=$PATH:$GOPATH/bin

# NVM으로 node 버전 관리
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
