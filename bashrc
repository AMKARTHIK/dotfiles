# virtual env wrapper
source /usr/local/bin/virtualenvwrapper_lazy.sh
export AUTOENV_ASSUME_YES=1
export AUTOENV_ENV_FILENAME=".autoenv"
source /opt/apps/autoenv/activate.sh

#pipenv
export PIPENV_VENV_IN_PROJECT=1



# force_color_prompt=yes

# Git branch in prompt.

#parse_git_branch() {

#    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

#}


# Virtual ENV stuff
#add_venv_info () {
#    if [ -z "$VIRTUAL_ENV_DISABLE_PROMPT" ] ; then
#        VIRT_ENV_TXT=""
#        if [ "x" != x ] ; then
#            VIRT_ENV_TXT=""
#        else
#            if [ "`basename \"$VIRTUAL_ENV\"`" = "__" ] ; then
#                # special case for Aspen magic directories
#                # see http://www.zetadev.com/software/aspen/
#                VIRT_ENV_TXT="[`basename \`dirname \"$VIRTUAL_ENV\"\``]"
#            elif [ "$VIRTUAL_ENV" != "" ]; then
#                VIRT_ENV_TXT="(`basename \"$VIRTUAL_ENV\"`)"
#            fi
#        fi
#        if [ "${VIRT_ENV_TXT}" != "" ]; then
#            echo ${VIRT_ENV_TXT}" "
#        fi
#    fi
#}

#export PS1="\033[00m\u@\h \033[00m\w\[\033[97m\]\$(parse_git_branch)\[\033[00m\] $ "

#export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

# PS1=${PS1}"\[\$(job_color)\]\n\$(add_venv_info)\$\[${NC}\] "


# working PS1
#export PS1="${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \[\033[1;37m\]\$(parse_git_branch) \[\033[00m\]\$ \[\033[00m\]"

# Youtube DL Streamer

function stm() {
    youtube-dl -o - "$1" | vlc -
}

#GIT
alias gd='git difftool --dir-diff'

#bash utils
alias eb='vim ~/.bashrc'
alias sb='source ~/.bashrc'
# force_color_prompt=yes
alias l='ls -ahl --color'
# LS_COLORS='di=1:fi=0:ln=1;31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=1;35:*.rpm=90'
# export LS_COLORS

#Custom alias
alias js='cd /opt/JS'
alias lpth='xreader ~/Desktop/Karthik/karthik/pdf/42\ PYTHON\ BOOKS\ +\ EXAMPLES/BOOKS/LPTHW.pdf &'
alias dot='cd /home/harmony/Desktop/Karthik/karthik/dotfiles/'
alias st='python ~/Desktop/Karthik/karthik/DO-MY-STUFF/start-apps.py'
alias doit='cd ~/Desktop/Karthik/karthik/DO-MY-STUFF/'
alias data='/usr/bin/python ~/Desktop/Karthik/karthik/DO-MY-STUFF/fake-date.py'

#odoo utils
alias eco='vim odoo-server.ln'

#odoo run
alias r7='./openerp-server -c openerp-server.ln --workers=0'
alias r8='./odoo.py -c odoo-server.ln --workers=0'
alias r10='./odoo-bin -c odoo-server.ln --workers=0'
alias r10-lg='./odoo-bin -c odoo-server.ln --workers=0 --logfile ./.server.log'
alias r11='./odoo-bin -c .odoo-server.ln --workers=0'
alias r11-lg='./odoo-bin -c .odoo-server.ln --workers=0 --logfile ./.server.log'
alias r12='./odoo-bin -c odoo-conf.ln --workers=0'
alias r12-lg='./odoo-bin -c odoo-conf.ln --workers=0 --logfile ./.server.log'

#JOD
#alias vimjod='vim /opt/odoo/10.0-JOD'
#alias ijod='sudo /etc/init.d/odoo-jod'
#alias jod='cd /opt/odoo/10.0-JOD/10.0'
#alias jod-log='tail -f /var/log/odoo/10.0-JOD/odoo-server.log'
#alias eojod='eo -data /home/harmony/workspace/JOD -showlocation &'

#NRR
alias vimnrr='vim /opt/odoo/12.0-NRR/src'
alias inrr='sudo /opt/odoo/12.0-NRR/src/dev_tools/odoo-scripts/odoo-server'
alias nrr='cd /opt/odoo/12.0-NRR/src/12.0'
alias nrr-log='tail -f /opt/odoo/12.0-NRR/logs/odoo-server.log'
alias eonrr='eo -data /home/harmony/workspace/NRR -showlocation &'

#HEN
alias vimhen='vim /opt/odoo/12.0-HEN'
alias ihen='sudo /opt/odoo/12.0-HEN/dev_tools/odoo-scripts/odoo-server'
alias hen='cd /opt/odoo/12.0-HEN/12.0'
alias hen-log='tail -f /opt/odoo/12.0-HEN/logs/odoo-server.log'
alias eohen='eo -data /home/harmony/workspace/HEN -showlocation &'

#ETS
alias vimets='vim /opt/odoo/11.0-ETS'
alias iets='sudo /etc/init.d/odoo-ets'
alias ets='cd /opt/odoo/11.0-ETS/11.0'
alias ets-log='tail -f /var/log/odoo/11.0-ETS/odoo-server.log'
alias eoets='eo -data /home/harmony/workspace/ETS -showlocation &'

#LAS
alias vimlas='vim /opt/odoo/11.0-LAS'
alias ilas='sudo /etc/init.d/odoo-las'
alias las='cd /opt/odoo/11.0-LAS/11.0'
alias las-log='tail -f /var/log/odoo/11.0-LAS/odoo-server.log'
alias eolas='eo -data /home/harmony/workspace/LAS -showlocation &'

#SR
alias vimsr='vim /opt/odoo/11.0-SR'
alias isr='sudo /usr/local/bin/odoo-sr'
alias sr='cd /opt/odoo/11.0-SR/11.0'
alias sr-log='tail -f /var/log/odoo/11.0-SR/odoo-server.log'
alias eosr='eo -data /home/harmony/workspace/SR -showlocation &'

#SOD11
alias vimsod11='vim /opt/odoo/11.0-SOD'
alias isod11='sudo /etc/init.d/odoo-sod11'
alias sod11='cd /opt/odoo/11.0-SOD/11.0'
alias sod11-log='tail -f /var/log/odoo/11.0-SOD/odoo-server.log'
alias eosod11='eo -data /home/harmony/workspace/SOD11 -showlocation &'

#LS 10.0
alias ls10='cd /opt/odoo/10.0-LS/10.0'
alias ils10='sudo /etc/init.d/odoo-ls'
alias vimls10='vim /opt/odoo/10.0-LS'
alias ls10-log='tail -f /var/log/odoo/10.0-LS/odoo-server.log'
alias eols10='eo -data /home/harmony/workspace/LS -showlocation &'

#TR
alias tr8='cd /opt/odoo/8.0-TR/8.0'
alias tr-log='tail -f /var/log/odoo/8.0-TR/odoo-server.log'
alias vimtr='cd /opt/odoo/8.0-TR'
alias eotr='eo -data /home/harmony/workspace/TR -showlocation &'
alias itr='sudo /opt/odoo/8.0-TR/dev_tools/odoo-scripts/odoo-server'

#SOD
alias sod10='cd /opt/odoo/10.0-SOD/10.0'
alias sod10-log='tail -f /var/log/odoo/10.0-SOD/odoo-server.log'
alias isod10='sudo /etc/init.d/odoo-sod10'
alias vimsod10='vim /opt/odoo/10.0-SOD'
alias eosod10='eo -data /home/harmony/workspace/SOD10 -showlocation &'

#SOH
alias sohl='tail -f /var/log/odoo/10.0-SOH/odoo-server.log'
alias eosoh='eo -data /home/harmony/workspace/SOH10 -showlocation &'
alias vimsoh10='vim /opt/odoo/10.0-SOH'
alias soh10='cd /opt/odoo/10.0-SOH/10.0'
alias ish10='sudo /etc/init.d/odoo-soh10'

#CYandSF
alias eosf='eo -data /home/harmony/workspace/SF -showlocation &'
alias eocy='eo -data /home/harmony/workspace/CY -showlocation &'
alias isf='sudo /etc/init.d/openerp-sciencefirst'
alias icy='sudo /etc/init.d/openerp-cynmar'
alias cy='cd /opt/odoo/7.0-CY'
alias sf='cd /opt/odoo/7.0-SF'
alias vimcy='vim /opt/odoo/7.0-CY'
alias vimsf='vim /opt/odoo/7.0-SF'

alias dopy='/home/harmony/Desktop/Karthik/karthik/DO-MY-STUFF/.venv/bin/python'



bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'
#. ~/.bash_prompt
export TERM="xterm-256color"
# Powerline
#. /usr/local/lib/python2.7/dist-packages/powerline/bindings/bash/powerline.sh
function _update_ps1() {
    PS1="$(powerline-shell $?)"
}

if [ "$TERM" != "linux" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi
