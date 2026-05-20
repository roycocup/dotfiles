
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

source /home/rodrigo/.aliases

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - bash)"

# opencode
export PATH=/home/rodrigo/.opencode/bin:$PATH

# Enable bash-completion
source ~/ble.sh/out/ble.sh
