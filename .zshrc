# BON4S .zshrc (https://github.com/BON4S/Dotfiles)

# This is my solution to automatically add some project folders to the path.
array=()
while IFS= read -r -d $'\0'; do
  array+=("$REPLY")
done < <(find /mnt/home2/dev -maxdepth 5 -type d -name ".bin" -print0)
if (( ${#array[@]} )); then
  for x in "${array[@]}"; do
    export PATH=$PATH:${x}
  done
fi

# Path added manually.
export PATH=$PATH:/home/bonas/.npm-global/bin
export PATH=$PATH:/home/bonas/.config/yarn/global/node_modules/.bin
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:/opt/android-studio/bin
export PATH=$PATH:/usr/lib/jvm/java-11-openjdk/bin

# Preferred editor.
export EDITOR="nano"
export VISUAL="nano"

# Language.
export LANG=pt_BR.UTF-8
export LC_ALL=pt_BR.UTF-8

# Ssh key.
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Alias.
alias tempo="curl https://wttr.in/"
alias clima="curl https://wttr.in/"
alias disco="df -h -t ext4"
alias disk="df -h -t ext4"
alias wifi="iwgetid | cut -d':' -f2 | sed -e 's/\"//g'"
alias wifi5="sudo netctl-auto switch-to wlp0s26u1u2-REDE5GHZ"
alias agenda="gcalcli agenda $(date +%Y-%m-%d) $(date +%Y-%m-%d -d '+ 15 day')"
alias c="chmod +x *.sh"
alias t="/mnt/home2/dev/sh/ignore/TEST.sh"
alias ga="/mnt/home2/dev/sh/ignore/google_assistant.sh"
alias g="/mnt/home2/dev/sh/ignore/google.sh"
alias y="/mnt/home2/dev/sh/ignore/youtube.sh"
alias yd="youtube-dl"
alias cdi="cd /mnt/home2/dev/sh/ignore && pwd"
alias cdd="cd /mnt/home2/dev && pwd"
alias de="cd $HOME/Desktop && pwd && ls"

# ------------
# Lines configured by zsh-newuser-install.
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install.
# The following lines were added by compinstall.
zstyle :compinstall filename "/home/bonas/.zshrc"
autoload -Uz compinit
compinit
# End of lines added by compinstall.
# ------------

# oh-my-zsh.
export ZSH=/usr/share/oh-my-zsh/

# oh-my-zsh theme. https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="sorin"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd/mm/yyyy"

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

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# oh-my-zsh plugins.
# /usr/share/oh-my-zsh/plugins
# /usr/share/oh-my-zsh/custom/plugins/
plugins=(
  colored-man-pages
  colorize
  safe-paste
  sudo
  zsh-autosuggestions
)

# oh-my-zsh.sh
source $ZSH/oh-my-zsh.sh

# Suggests a repository program when a command is not found.
source /usr/share/doc/pkgfile/command-not-found.zsh

# Shows the current directory.
echo -n "\e[90m" && pwd
