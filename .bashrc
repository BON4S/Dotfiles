# BON4S .bashrc (https://github.com/BON4S/Dotfiles).
# This is a basic configuration. I currently use ZSH, see .zshrc

# If not running interactively, don't do anything.
[[ $- != *i* ]] && return

# This is my solution to automatically add some project folders to the path.
#array=()
#while IFS= read -r -d $'\0'; do
#  array+=("$REPLY")
#done < <(find /mnt/home2/dev -maxdepth 5 -type d -name ".bin" -print0)
#if (( ${#array[@]} )); then
#  for x in "${array[@]}"; do
#    export PATH=$PATH:${x}
#  done
#fi

# Path added manually.
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$HOME/.cargo/bin
export XDG_CONFIG_HOME=/usr/share
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
export PATH=$PATH:$HOME/.npm-global/bin
export PATH=$PATH:$HOME/.config/yarn/global/node_modules/.bin
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:/opt/android-studio/bin
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk/

# Preferred editor.
export EDITOR="micro"
export VISUAL="micro"

# Language environment.
export LANG=pt_BR.UTF-8

# Ssh key.
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Alias.
alias ls="ls --color=auto"

# PS1.
PS1="\e[94mBASH \e[90m\W \e[94m❯\e[32m "

# Shows the current directory.
pwd
