# EXP_DIR="$HOME/Desktop/experimental"
# SCRIPTS="$EXP_DIR/house_of_rasjonell"

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="agnoster"
plugins=(
  zsh-autosuggestions
  rails
  git
  ruby
)

source $ZSH/oh-my-zsh.sh

export PATH=$HOME/.rbenv/bin:$PATH”
eval "$(rbenv init -)"
rbenv shell 2.5.3
rbenv global 2.5.3

function ls_sort {
  ls -l $1 | rev | sort | rev
}

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
fi

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

nvm use 10

export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
# export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_181.jdk/Contents/Home/"

# alias camunda="$SCRIPTS/camunda.sh"
# alias kill_proc="$SCRIPTS/kill_proc.sh"
# alias cleanup="$SCRIPTS/cleanup.sh"
# alias jmake="$EXP_DIR/data_structures/jmake.sh"
alias ls=ls_sort
