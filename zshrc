# Path to your oh-my-zsh installation.
export ZSH=/home/knonn/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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
plugins=(git)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias apt-update="sudo apt-get update"
alias apt-upgrade="sudo apt-get upgrade"
alias screenshot="ksnapshot"
alias l="ls -lhG"
alias cda="cd .."
alias power-manager="xfce4-power-manager-settings"
alias lsa="ls -a"
alias docperso="cat ~/Documents/docperso"
alias findtmp="find ~/ -name '*~'"
alias cleartmp="find ~/ -name '*~' -print0 | xargs -0 rm"
alias sufindtmp="sudo find ~/ -name '*~'"
alias sucleartmp="sudo find ~/ -name '*~' -print0 | xargs -0 rm"
alias calendrier="orage"
alias sfkgaming="ssh knonn@sfkgaming.fr -p 6969"
alias pdfview="evince"
alias reboot="sudo systemctl reboot"
alias wincpp="i586-mingw32msvc-g++"
alias winc="i586-mingw32msvc-gcc"
alias e="emacs24"
alias lpi="ssh pi@192.168.1.21 -p 6969"
alias pi="ssh pi@knonn.flnet.org -p 6969"
alias df="df -h"
alias e="emacs"
alias dfh="df -h"
alias win='VBoxManage startvm "Windows 7"'
alias ubuntu='VBoxManage startvm "Ubuntu server"'
alias newtex="~/texmf/tex/latex/knonn/create_latex_project -e"
alias latexclear="rm *.log | rm *.aux | rm *.toc"
alias uuid="sudo blkid"
alias pcoff="sudo shutdown -h now"
alias inst="sudo dpkg -i"
alias pcm="pcmanfm ./&"
alias mvworkspace="~/Documents/dev/move-workspace.sh"
alias nscreen="~/Documents/dev/newscreen.sh"
