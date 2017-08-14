# virtual env wrapper
source /usr/local/bin/virtualenvwrapper_lazy.sh
source /usr/local/bin/activate.sh


# force_color_prompt=yes

# Git branch in prompt.

parse_git_branch() {

    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}


# Virtual ENV stuff
add_venv_info () {
    if [ -z "$VIRTUAL_ENV_DISABLE_PROMPT" ] ; then
        VIRT_ENV_TXT=""
        if [ "x" != x ] ; then
            VIRT_ENV_TXT=""
        else
            if [ "`basename \"$VIRTUAL_ENV\"`" = "__" ] ; then
                # special case for Aspen magic directories
                # see http://www.zetadev.com/software/aspen/
                VIRT_ENV_TXT="[`basename \`dirname \"$VIRTUAL_ENV\"\``]"
            elif [ "$VIRTUAL_ENV" != "" ]; then
                VIRT_ENV_TXT="(`basename \"$VIRTUAL_ENV\"`)"
            fi
        fi
        if [ "${VIRT_ENV_TXT}" != "" ]; then
           echo ${VIRT_ENV_TXT}" "
        fi
    fi
}

#export PS1="\033[00m\u@\h \033[00m\w\[\033[97m\]\$(parse_git_branch)\[\033[00m\] $ "

#export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

# PS1=${PS1}"\[\$(job_color)\]\n\$(add_venv_info)\$\[${NC}\] "


# working PS1
export PS1="${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \[\033[1;37m\]\$(parse_git_branch) \[\033[00m\]\$ \[\033[00m\]"

# Youtube DL Streamer

function stm() {
youtube-dl -o - "$1" | vlc -
}

# alias
alias gd='git difftool --dir-diff'
alias etr='en -data /home/harmony/workspace/TR -showlocation &'
alias esf='en -data /home/harmony/workspace/SF -showlocation &'
alias ecy='en -data /home/harmony/workspace/CY -showlocation &'
alias emm='en -data /home/harmony/workspace/MM -showlocation &'
alias esh='en -data /home/harmony/workspace/SOH -showlocation &'
alias itr='sudo /etc/init.d/odoo-trillium'
alias itr9='sudo /etc/init.d/odoo-tr9'
alias imm='sudo /etc/init.d/odoo-mmlafleur'
alias isf='sudo /etc/init.d/openerp-sciencefirst'
alias icy='sudo /etc/init.d/openerp-cynmar'
alias ish='sudo /etc/init.d/odoo-soh'
alias itr10='sudo /etc/init.d/odoo-tr10/odoo-server'
alias isod10='sudo /etc/init.d/odoo-sod10/odoo-server'
alias ish10='sudo /etc/init.d/odoo-soh10/odoo-server'
alias ict10='sudo /etc/init.d/odoo-ct10/odoo-server'
alias ijod='sudo /etc/init.d/odoo-jod/odoo-server'
alias r7='./openerp-server -c openerp-server.ln --workers=0'
alias r9='./odoo.py -c odoo-server.ln --workers=0'
alias r10='./odoo-bin -c odoo-server.ln --workers=0'
alias soh9='cd /opt/odoo/9.0-SOH/9.0'
alias sod9='cd /opt/odoo/9.0-SOD/9.0'
alias sod10='cd /opt/odoo/10.0-SOD/10.0'
alias tr9='cd /opt/odoo/9.0-TR/9.0'
alias soh10='cd /opt/odoo/10.0-SOH/10.0'
alias ct10='cd /opt/odoo/10.0-CT/10.0'
alias tr10='cd /opt/odoo/10.0-TR/10.0'
alias cy='cd /opt/odoo/7.0-CY'
alias sf='cd /opt/odoo/7.0-SF'
alias jod='cd /opt/odoo/10.0-JOD/10.0'
alias eb='vim ~/.bashrc'
alias sb='source ~/.bashrc'
alias eco='vim odoo-server.ln'
alias cls='clear'
alias sohl='tail -f /var/log/odoo/10.0-SOH/odoo-server.log'
alias js='cd /opt/JS'
alias lpth='evince ~/Desktop/Karthik/karthik/pdf/42\ PYTHON\ BOOKS\ +\ EXAMPLES/BOOKS/LPTHW.pdf &'
alias dot='cd /home/harmony/Desktop/Karthik/karthik/dotfiles/'
alias st='python ~/Desktop/Karthik/karthik/DO-MY-STUFF/start-apps.py'
alias doit='cd ~/Desktop/Karthik/karthik/DO-MY-STUFF/'
alias ct-log='tail -f /var/log/odoo/10.0-CT/odoo-server.log'
alias jod-log='tail -f /var/log/odoo/10.0-JOD/odoo-server.log'
alias l='ls -al'
alias data='/usr/bin/python ~/Desktop/Karthik/karthik/DO-MY-STUFF/fake-date.py'
alias vimsoh9='vim /opt/odoo/9.0-SOH'
alias vimsod9='vim /opt/odoo/9.0-SOD'
alias vimsod10='vim /opt/odoo/10.0-SOD'
alias vimtr9='vim /opt/odoo/9.0-TR'
alias vimsoh10='vim /opt/odoo/10.0-SOH'
alias vimct10='vim /opt/odoo/10.0-CT'
alias vimtr10='vim /opt/odoo/10.0-TR'
alias vimcy='vim /opt/odoo/7.0-CY'
alias vimsf='vim /opt/odoo/7.0-SF'
alias vimjod='vim /opt/odoo/10.0-JOD'


bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'
#. ~/.bash_prompt
export TERM="xterm-256color"
# Powerline
. /usr/local/lib/python2.7/dist-packages/powerline/bindings/bash/powerline.sh
