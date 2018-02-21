# virtual env wrapper
source /usr/local/bin/virtualenvwrapper_lazy.sh
source /usr/local/bin/activate.sh

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
alias l='ls -al'

#Custom alias
alias js='cd /opt/JS'
alias lpth='evince ~/Desktop/Karthik/karthik/pdf/42\ PYTHON\ BOOKS\ +\ EXAMPLES/BOOKS/LPTHW.pdf &'
alias dot='cd /home/harmony/Desktop/Karthik/karthik/dotfiles/'
alias st='python ~/Desktop/Karthik/karthik/DO-MY-STUFF/start-apps.py'
alias doit='cd ~/Desktop/Karthik/karthik/DO-MY-STUFF/'
alias data='/usr/bin/python ~/Desktop/Karthik/karthik/DO-MY-STUFF/fake-date.py'

#odoo utils
alias eco='vim odoo-server.ln'

#odoo run
alias r7='./openerp-server -c openerp-server.ln --workers=0'
alias r9='./odoo.py -c odoo-server.ln --workers=0'
alias r10='./odoo-bin -c odoo-server.ln --workers=0'
alias r11='./odoo-bin -c .odoo-server.ln --workers=0'

#JOD
alias vimjod='vim /opt/odoo/10.0-JOD'
alias ijod='sudo /etc/init.d/odoo-jod'
alias jod='cd /opt/odoo/10.0-JOD/10.0'
alias jod-log='tail -f /var/log/odoo/10.0-JOD/odoo-server.log'

#ETS
alias vimets='vim /opt/odoo/11.0-ETS'
alias iets='sudo /etc/init.d/odoo-ets'
alias ets='cd /opt/odoo/11.0-ETS/11.0'
alias ets-log='tail -f /var/log/odoo/11.0-ETS/odoo-server.log'

#TSG
alias vimtsg='vim /opt/odoo/11.0-TSG'
alias itsg='sudo /etc/init.d/odoo-tsg'
alias tsg='cd /opt/odoo/11.0-TSG/11.0'
alias tsg-log='tail -f /var/log/odoo/11.0-TSG/odoo-server.log'

#CT
alias ct10='cd /opt/odoo/10.0-CT/10.0'
alias ict10='sudo /etc/init.d/odoo-ct10/odoo-server'
alias vimct10='vim /opt/odoo/10.0-CT'
alias ct-log='tail -f /var/log/odoo/10.0-CT/odoo-server.log'

#SUB 10.0
alias sub10='cd /opt/odoo/10.0-SUB/10.0'
alias isub10='sudo /etc/init.d/odoo-sub-server'
alias vimsub10='vim /opt/odoo/10.0-SUB'
alias sub10-log='tail -f /var/log/odoo/10.0-SUB/odoo-server.log'
alias esub10='eo -data /home/harmony/workspace/10.0-SUB -showlocation &'

#LS 10.0
alias ls10='cd /opt/odoo/10.0-LS/10.0'
alias ils10='sudo /etc/init.d/odoo-ls'
alias vimls10='vim /opt/odoo/10.0-LS'
alias ls10-log='tail -f /var/log/odoo/10.0-LS/odoo-server.log'
alias els10='eo -data /home/harmony/workspace/LS -showlocation &'

#TR
alias etr='en -data /home/harmony/workspace/TR -showlocation &'
alias itr='sudo /etc/init.d/odoo-trillium'
alias itr9='sudo /etc/init.d/odoo-tr9'
alias itr10='sudo /etc/init.d/odoo-tr10/odoo-server'
alias tr9='cd /opt/odoo/9.0-TR/9.0'
alias tr10='cd /opt/odoo/10.0-TR/10.0'
alias vimtr10='vim /opt/odoo/10.0-TR'
alias vimtr9='vim /opt/odoo/9.0-TR'

#SOD
alias sod10='cd /opt/odoo/10.0-SOD/10.0'
alias isod10='sudo /etc/init.d/odoo-sod10'
alias sod9='cd /opt/odoo/9.0-SOD/9.0'
alias vimsod9='vim /opt/odoo/9.0-SOD'
alias vimsod10='vim /opt/odoo/10.0-SOD'

#SOH
alias sohl='tail -f /var/log/odoo/10.0-SOH/odoo-server.log'
alias esh='en -data /home/harmony/workspace/SOH -showlocation &'
alias vimsoh9='vim /opt/odoo/9.0-SOH'
alias vimsoh10='vim /opt/odoo/10.0-SOH'
alias soh10='cd /opt/odoo/10.0-SOH/10.0'
alias soh9='cd /opt/odoo/9.0-SOH/9.0'
alias ish='sudo /etc/init.d/odoo-soh'
alias ish10='sudo /etc/init.d/odoo-soh10/odoo-server'

#mm
alias imm='sudo /etc/init.d/odoo-mmlafleur'
alias emm='en -data /home/harmony/workspace/MM -showlocation &'

#CYandSF
alias esf='en -data /home/harmony/workspace/SF -showlocation &'
alias ecy='en -data /home/harmony/workspace/CY -showlocation &'
alias isf='sudo /etc/init.d/openerp-sciencefirst'
alias icy='sudo /etc/init.d/openerp-cynmar'
alias cy='cd /opt/odoo/7.0-CY'
alias sf='cd /opt/odoo/7.0-SF'
alias vimcy='vim /opt/odoo/7.0-CY'
alias vimsf='vim /opt/odoo/7.0-SF'


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
