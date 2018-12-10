#Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/user/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#
export TERM='rxvt-unicode-256color'
alias vi="nvim"
alias pd="mupdf"
alias py="python"
alias ma="neomutt"
alias up="sudo pacman -Syyu"
alias wi="sudo zsh ~/scripts/wifi /root/.cat_installer/cat_installer.conf"
alias wifi="sudo zsh ~/scripts/wifi"
alias ls="ls --color=auto"
alias grep="grep --color"
alias dl="sudo pacman -S"
alias sdown="systemctl poweroff"
alias rboot="systemctl reboot"
alias an="adb kill-server; adb start-server"
eval `dircolors /home/user/.resources/dircolors.256dark`

bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^r' history-incremental-search-backward
bindkey '^e' history-incremental-search-forward
bindkey '^w' backward-kill-word

export PROMPT="%% "

export KEYTIMEOUT=1
export VISUAL=nvim
export EDITOR=nvim
export BROWSER=qutebrowser
export PATH=./:$PATH
export PATH=/home/user/.local/bin:$PATH
export ANDROID_SDK_HOME=/home/user/Android
export LD_LIBRARY_PATH=/usr/lib/perl5/5.26/core_perl/CORE/:$LD_LIBRARY_PATH

setopt HIST_VERIFY
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
