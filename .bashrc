# URL: http://qiita.com/nagane/items/f45fcc85b4864fca3909
export HISTSIZE=2000
export HISTCONTROL=ignoredups
export HISTTIMEFORMAT='%Y-%m-%d %T '

GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\h\[\033[00m\]:\W\[\033[31m\]$(__git_ps1 [%s])\[\033[00m\](\t)\n\$ '

eval "$(direnv hook bash)"

source /usr/local/etc/bash_completion.d/brew
source /usr/local/etc/bash_completion.d/pipenv
source /usr/local/etc/bash_completion.d/pyenv.bash
# URL: http://qiita.com/koyopro/items/3fce94537df2be6247a3
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# homebrew
export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="/usr/local/bin:$PATH"

# pyenv
export PYENV_ROOT="${HOME}/.pyenv"
export PATH="${PYENV_ROOT}/bin:$PATH"
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
alias brew="env PATH=${PATH/${HOME}\/\.pyenv\/shims:/} brew"

# pipenv
export PIPENV_VENV_IN_PROJECT=true

# nodenv
# export PATH="$HOME/.nodenv/bin:$PATH"
# if which nodenv > /dev/null; then eval "$(nodenv init -)"; fi

# goenv
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
if which goenv > /dev/null; then eval "$(goenv init -)"; fi

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# URL: http://qiita.com/toritori0318/items/e92c7f43223353571274
# docker-machine
#if [ "`docker-machine status dev`" = "Running" ]; then
#   eval "$(docker-machine env dev)"
#fi

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
