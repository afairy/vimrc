
RAWPATH=$HOME/.local/bin:$HOME/bin:/Library/TeX/texbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
export PATH="$RAWPATH"
KAP='/Users/kayalan/Public'
alias ..='cd ..'
alias addconda="unsetconda; export PATH=$HOME/anaconda3/bin:$RAWPATH"
#alias galconda="unsetconda; export PATH=/ceph/galaxy-dev/anaconda3/bin:$RAWPATH"
#alias depconda="unsetconda; export PATH=/ceph/galaxy-data/conda/bin:$RAWPATH"
alias bi='brew info'
alias c='source activate'
alias cdp="cd $KAP"
alias cq='source deactivate'
findiname() { find . -iname "*$**"; }
alias f=findiname
alias lf='less +F -S'
alias l='ls -l'
alias ownpublic="sudo chown -R lo $KAP"
alias q='rlwrap -c -r q' # kdb+
alias radio_dronezone='mpv http://somafm.com/dronezone130.pls'
alias radio_groovesalad='mpv http://somafm.com/groovesalad130.pls'
alias radio_secretagent='mpv http://somafm.com/secretagent130.pls'
alias remconda="unsetconda; export PATH=$RAWPATH"
alias unsetconda='unset CONDA_PREFIX CONDA_DEFAULT_ENV'
tab() { echo -ne "\033]0;$*\007"; }
alias w='rlwrap -c -r w' # wish
#m () { man $@ | fmt 92 | less; }
#man() {
#  env LESS_TERMCAP_mb=$'\E[01;31m' \
#    LESS_TERMCAP_md=$'\E[01;38;5;74m' \
#    LESS_TERMCAP_me=$'\E[0m' \
#    LESS_TERMCAP_se=$'\E[0m' \
#    LESS_TERMCAP_so=$'\E[38;5;246m' \
#    LESS_TERMCAP_ue=$'\E[0m' \
#    LESS_TERMCAP_us=$'\E[04;38;5;146m' \
#    man "$@" | fmt 92 | less;
#}
[ -z "$PS1" ] && return
#PS1='\[\e[1m\u@\h \W \$\e[0m '
PS1="\[\e[1m\]\W\[\e[0m\] $ "
#PS1='\[\e[1m\W$\e[0m  '
#PS1='    '
export LANG='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'
#export LC_ALL=de_DE.utf-8
#export LANG=de_DE.utf-8
#export LANG=C
#export LC_ALL=C
export PROMPT_COMMAND='history -a'
#export PROMPT_COMMAND='if [ "$(id -u)" -ne 0 ]; then echo "$(date "+%Y-%m-%d.%H:%M:%S") $(pwd) $(history 1)" >> ~/logs/bash-history-$(date "+%Y-%m-%d").log; fi'
export HISTCONTROL=ignoredups:erasedups
export EMBOSSRC=~/seq
export EMBOSS_RCHOME=N
export EDITOR=vim
# CRAM MD5 indexes (samtools)
export REF_PATH=~/seq/cram_cache/%2s/%2s/%s #:http://www.ebi.ac.uk/ena/cram/md5/%s
export REF_CACHE=~/seq/cram_cache/%2s/%2s/%s

# BioPerl
#[ $SHLVL -eq 1 ] && eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib)"
#PATH=~/Applications/bp-utils:$PATH
#PATH=/usr/local/Cellar/tcl-tk/8.6.4/bin:$PATH

# ncar-ncl
# exporting this caused trouble with libiconv.dylib not being found, put in script?
#export DYLD_FALLBACK_LIBRARY_PATH=$(dirname $(gfortran --print-file-name libgfortran.3.dylib)):$DYLD_FALLBACK_LIBRARY_PATH
#NCARG_ROOT=/usr/local/ncl-6.3.0
#PATH=$NCARG_ROOT/bin:"$PATH"

#RANDOM_COWPIC=$(cowsay -l | tr ' ' '\n' | tail -n +6 | grep -v -e head-in -e sodomized -e surgery -e elephant-inside-snake -e telebears| gshuf -n 1)
RANDOM_COWPIC=$(echo "daemon dragon elephant hellokitty kitty stegosaurus turtle" | tr ' ' '\n' |  gshuf -n 1)
COWSTATE=$(echo bdgpstwy | grep -o . | gshuf -n 1)
fortune -e ~/Documents/fortune | cowthink -$COWSTATE -f $RANDOM_COWPIC -W 60

#PATH="$PATH:/usr/local/bin/opt/X11/bin:/Library/TeX/texbin"
#PATH=$HOME/.pub-cache/bin:$PATH # Dart
#PATH="/Users/lo/.local/bin:$PATH"
#export PATH="/Users/lo/bin:/Users/lo/anaconda3/bin:/usr/local/bin:$PATH"
#export PATH="/usr/local/sbin:$PATH"
#/Users/lo/bin:/Users/lo/anaconda3/bin:/usr/local/bin:/Users/lo/.local/bin:/Users/lo/.pub-cache/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin/opt/X11/bin:/Library/TeX/texbin

