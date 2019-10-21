# virtual env wrapper
source /usr/local/bin/virtualenvwrapper_lazy.sh
export AUTOENV_ASSUME_YES=1
export AUTOENV_ENABLE_LEAVE=1
export AUTOENV_ENV_FILENAME=".autoenv"
export AUTOENV_ENV_LEAVE_FILENAME=".autoleave"

# export WDB_NO_BROWSER_AUTO_OPEN=True
# export WDB_SOCKET_SERVER=127.0.0.1
# export WDB_SOCKET_PORT=19840
# export WDB_WEB_SERVER=127.0.0.1
# export WDB_WEB_PORT=1984
# # export WDB_NO_BROWSER_AUTO_OPEN=True
# export LD_LIBRARY_PATH=/usr/lib/x86_64-linux-gnu
source /opt/apps/autoenv/activate.sh

#pipenv
export PIPENV_VENV_IN_PROJECT=1

#"xmllint
export XMLLINT_INDENT="    "

#git_update
. /home/harmony/Desktop/Karthik/karthik/dotfiles/.local/git_update.bash

# Youtube DL Streamer

function stm() {
    youtube-dl -o - "$1" | vlc -
}

#GIT
alias gd='git difftool --dir-diff'
alias gdc='git difftool --dir-diff --cached'

#bash utils
alias eb='vim ~/.bashrc'
alias sb='source ~/.bashrc'

# force_color_prompt=yes
alias l='ls -ahl --color'

#fzf mappings
# fd --type f | fzf
export FZF_DEFAULT_COMMAND='fd --type f'


#Custom alias
alias js='cd /opt/JS'
alias lpth='xreader ~/Desktop/Karthik/karthik/pdf/42\ PYTHON\ BOOKS\ +\ EXAMPLES/BOOKS/LPTHW.pdf &'
alias dot='cd /home/harmony/Desktop/Karthik/karthik/dotfiles/'
alias st='python ~/Desktop/Karthik/karthik/DO-MY-STUFF/start-apps.py'
alias doit='cd ~/Desktop/Karthik/karthik/DO-MY-STUFF/'
alias data='/usr/bin/python ~/Desktop/Karthik/karthik/DO-MY-STUFF/fake-date.py'

alias dopy='/home/harmony/Desktop/Karthik/karthik/DO-MY-STUFF/.venv/bin/python'
alias cust='cd /home/harmony/Desktop/customers'
alias auto='cd /home/harmony/Desktop/Karthik/karthik/autobot/autobot/autobot'
alias ss='/home/harmony/Desktop/vlc-screen-share/vlc-hangouts'
alias ff='/home/harmony/Desktop/vlc-screen-share/fakecamera'
alias tor='cd /home/harmony/Desktop/Karthik/karthik/tor-browser_en-US && ./start-tor-browser.desktop'
alias novim='vim -u /home/harmony/.vim/essentials.vim'

bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'

#"python script completions
. /etc/bash_completion.d/python-argcomplete.sh
eval "$(register-python-argcomplete gt)" # go to customer
eval "$(register-python-argcomplete cv)" # customer vim
eval "$(register-python-argcomplete eo)" # open eclipse
eval "$(register-python-argcomplete ro)" # run odoo
eval "$(register-python-argcomplete lg)" # see log
eval "$(register-python-argcomplete ec)" # edit odoo conf
eval "$(register-python-argcomplete cu)" # git update
eval "$(register-python-argcomplete @)" # autobot
eval "$(register-python-argcomplete scaff)" # test bot

export TERM="xterm-256color"
# Powerline
#. /usr/local/lib/python2.7/dist-packages/powerline/bindings/bash/powerline.sh
function _update_ps1() {
    PS1="$(powerline-shell $?)"
}

if [ "$TERM" != "linux" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi
export PATH=$PATH:/home/harmony/.nexustools
#:/opt/my_odoo_helpers/sodexis_tools/scripts
export PATH=$PATH:/home/harmony/Desktop/Karthik/karthik/autobot/autobot/autobot/bin

export COMPOSE_IMPERSONATION='1000:1000'

#flask related
# export FLASK_ENV=development
