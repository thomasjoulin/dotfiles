function parse_git_branch
{
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

PROMPT="<${at_bold}thomas@nephtys${at_boldoff}(${fg_cyan}%~${at_normal})$(parse_git_branch)> "
 
#Set the auto completion on
autoload -U compinit
compinit
 
#Lets set some options
setopt autocd
setopt auto_resume
unsetopt beep
 
## EnaBles the extgended globbing features
setopt extendedglob
 
#Set some ZSH styles
zstyle ':completion:*:descriptions' format ''
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'
 
HISTFILE=~/.zsh-histfile
HISTSIZE=1000
SAVEHIST=1000
 
#Aliases
##ls, the common ones I use a lot shortened for rapid fire usage

alias templater='cd /Applications/MAMP/htdocs/ibizapp/'
alias thaihosting='cd /Users/thomasjoulin/Dropbox/Work/Thaihosting/Dev/ThaiHosting'
alias minify='java -jar /usr/bin/yuicompressor'
alias ls='ls -G' #I like color
alias l='ls -lFh'     #size,show type,human readable
alias la='ls -lAFh'   #long list,show almost all,show type,human readable
alias lr='ls -tRFh'   #sorted by date,recursive,show type,human readable
alias lt='ls -ltFh'   #long list,sorted by date,show type,human readable
alias ftpth='ftp 202.142.223.143'
alias e="emacs"
alias tun="ssh -N -f thomas@morgankorchia.com -L3128:localhost:3128"
alias smor="ssh thomas@morgankorchia.com"
alias gco="git checkout"
alias grm="git rebase master"
alias clean='rm *~ \#*\# *~ ; l'

##cd, because typing the backslash is ALOT of work!!
alias .='cd ../'
alias ..='cd ../../'
alias ...='cd ../../../'
alias ....='cd ../../../../'
 
# SSH aliases - short cuts to ssh to a host
 
# Screen aliases - add a new screen , or entire session, name it, then ssh to the host
#alias sshost='screen -t HOST shost'

#Color table from: http://www.understudy.net/custom.html
fg_black=%{$'\e[0;30m'%}
fg_red=%{$'\e[0;31m'%}
fg_green=%{$'\e[0;32m'%}
fg_brown=%{$'\e[0;33m'%}
fg_blue=%{$'\e[0;34m'%}
fg_purple=%{$'\e[0;35m'%}
fg_cyan=%{$'\e[0;36m'%}
fg_lgray=%{$'\e[0;37m'%}
fg_dgray=%{$'\e[1;30m'%}
fg_lred=%{$'\e[1;31m'%}
fg_lgreen=%{$'\e[1;32m'%}
fg_yellow=%{$'\e[1;33m'%}
fg_lblue=%{$'\e[1;34m'%}
fg_pink=%{$'\e[1;35m'%}
fg_lcyan=%{$'\e[1;36m'%}
fg_white=%{$'\e[1;37m'%}
#Text Background Colors
bg_red=%{$'\e[0;41m'%}
bg_green=%{$'\e[0;42m'%}
bg_brown=%{$'\e[0;43m'%}
bg_blue=%{$'\e[0;44m'%}
bg_purple=%{$'\e[0;45m'%}
bg_cyan=%{$'\e[0;46m'%}
bg_gray=%{$'\e[0;47m'%}
#Attributes
at_normal=%{$'\e[0m'%}
at_bold=%{$'\e[1m'%}
at_italics=%{$'\e[3m'%}
at_underl=%{$'\e[4m'%}
at_blink=%{$'\e[5m'%}
at_outline=%{$'\e[6m'%}
at_reverse=%{$'\e[7m'%}
at_nondisp=%{$'\e[8m'%}
at_strike=%{$'\e[9m'%}
at_boldoff=%{$'\e[22m'%}
at_italicsoff=%{$'\e[23m'%}
at_underloff=%{$'\e[24m'%}
at_blinkoff=%{$'\e[25m'%}
at_reverseoff=%{$'\e[27m'%}
at_strikeoff=%{$'\e[29m'%}
