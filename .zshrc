##>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> For zprezto >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>#
export SHELL=zsh
export ZSH=$HOME/.zprezto
export EDITOR='nvim'


export VISUAL='nvim'
alias vim='nvim'
alias vi='nvim'

###############################################################################################################
# User configuration

export MANPATH="/usr/local/man:$MANPATH"



# You may need to manually set your language environment
 export LANG=en_US.UTF-8


# Compilation flags
 export ARCHFLAGS="-arch x86_64"

# ssh
 export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
export VIMCONFIG=~/.config/nvim/
export MYVIMRC=~/.config/nvim/vimrc
export VIMDATA=~/.local/share/nvim
export VIMRC=~/.config/nvim/vimrc
export VIMCONFIG=~/.config/nvim/
export MYVIMRC=~/.config/nvim/vimrc
export VIMDATA=~/.local/share/nvim


alias grep="grep --color=auto"
alias mars="/Applications/MARS.app/Contents/MacOS/JavaApplicationStub"
alias headset="proxychains4 -f /Applications/Headset.app/Contents/proxychains.conf /Applications/Headset.app/Contents/MacOS/Headset & > /dev/null"

alias subl="open -a Sublime\ Text"
alias vscode="open -a Visual\ Studio\ Code"
alias aria2rpc="aria2c --conf-path=/Users/guoliang/aria2.conf -D"
[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh

# Set the path for golang development

export GOPATH=$HOME/workspace/golib
export PATH=$PATH:$GOPATH/bin
export GOPATH=$GOPATH:$HOME/workspace/gopher
# export GOBIN=$HOME/workspace/gopher/bin

# set the path for rust
export PATH="$HOME/.cargo/bin:$PATH"

alias ping='prettyping --nolegend'
alias cat='bat'
alias top="sudo htop" # alias top and fix high sierra bug
alias cpycm="cp ~/Dropbox/ycm_extra_conf.py `pwd`/.ycm_extra_conf.py"
alias du="ncdu --color dark -rr -x --exclude .git --exclude node_modules"

# For pipenv
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8


export PATH="/usr/local/opt/binutils/bin:$PATH"
export PATH="$PATH:/Library/TeX/texbin"
alias mycli="mycli -uroot -h 127.0.0.1"

# set pipenv virtrual env dir location
export PIPENV_VENV_IN_PROJECT=1
# auto active the virtual env
function cd {
    builtin cd "$@"
    if [ -f "Pipfile" ]; then
        pipenv shell
    fi
}

#source Prezto.
source $ZSH/init.zsh

#for fzf
alias preview="fzf --preview 'bat --color \"always\" {}'"
# add support for ctrl+o to open selected file in VS Code
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(vim {})+abort' --border"
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'


#
bindkey -e

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
function gi() { curl -sLw n https://www.gitignore.io/api/$@ ;}

source /Users/guoliang/Library/Preferences/org.dystroy.broot/launcher/bash/br
export PATH="$HOME/.local/bin:$PATH"
export PATH="$PATH:/usr/local/sbin"
export PATH="/usr/local/opt/llvm/bin:$PATH"
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git    --work-tree=$HOME"
alias ds=dotfiles