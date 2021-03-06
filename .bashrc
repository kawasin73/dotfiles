# URL: http://qiita.com/nagane/items/f45fcc85b4864fca3909
export HISTSIZE=2000
export HISTCONTROL=ignoredups
export HISTTIMEFORMAT='%Y-%m-%d %T '

GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\h\[\033[00m\]:\W\[\033[31m\]$(__git_ps1 [%s])\[\033[00m\](\t)\n\$ '

eval "$(direnv hook bash)"

source /usr/local/etc/bash_completion.d/brew
source /usr/local/etc/bash_completion.d/pipenv
# URL: http://qiita.com/koyopro/items/3fce94537df2be6247a3
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash

export PATH=$HOME/scripts:$PATH

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# goenv
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
if which goenv > /dev/null; then eval "$(goenv init -)"; fi

# pipenv
export PIPENV_VENV_IN_PROJECT=true

export GOPATH=$HOME
export PATH=$GOPATH/bin:$PATH

# URL: http://qiita.com/toritori0318/items/e92c7f43223353571274
# docker-machine
#if [ "`docker-machine status dev`" = "Running" ]; then
#   eval "$(docker-machine env dev)"
#fi

# MacTex
export PATH="/Library/TeX/texbin/:$PATH"

alias ls="ls -G"
alias ll="ls -Glha"

# docker-compose alias
alias dcu="docker-compose up"
alias dce="docker-compose exec"
alias dcs="docker-compose stop"
alias dcb="docker-compose build"
alias dcrs="docker-compose restart"
alias dcr="docker-compose run"
alias dcp="docker-compose ps"

alias be="bundle exec"

# URL: http://qiita.com/itkrt2y/items/0671d1f48e66f21241e2
alias g='cd $(ghq root)/$(ghq list | peco)'
alias gh='hub browse $(ghq list | peco | cut -d "/" -f 2,3)'

# ssh-agent default
ssh-add -q ~/.ssh/id_rsa
