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

####################################################################################################
#                               Set the path for golang development
####################################################################################################
export GOPATH=$HOME/workspace/.go

####################################################################################################
#                                   set the path for rust
####################################################################################################
export PATH="$HOME/.cargo/bin:$PATH"

alias ping='prettyping --nolegend'
alias cat='bat'
alias top="sudo htop" # alias top and fix high sierra bug
alias cpycm="cp ~/Dropbox/ycm_extra_conf.py `pwd`/.ycm_extra_conf.py"
alias du="ncdu --color dark -rr -x --exclude .git --exclude node_modules"

# For pipenv
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8


# set pipenv virtrual env dir location
export PIPENV_VENV_IN_PROJECT=1
# auto active the virtual env
function cd {
    builtin cd "$@"
    if [ -f "Pipfile" ]; then
        pipenv shell
    fi
}

# For c++ dev
export CPLUS_INCLUDE_PATH="/usr/local/opt/llvm/include/c++/v1:/Library/Developer/CommandLineTools/SDKs/MacOSX10.15.sdk/usr/include"
export LIBRARY_PATH="$LIBRARY_PATH:/Library/Developer/CommandLineTools/SDKs/MacOSX10.15.sdk/usr/lib"

# For neovim ruby provider

export PATH="$PATH:/Library/Ruby/Gems/2.6.0:/Users/guoliang/.gem/ruby/2.6.0:/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/gems/2.6.0"

alias s="fortune |  cowsay -f dragon-and-cow | lolcat"

#source Prezto.
source $ZSH/init.zsh

# config for fzf
# add support for ctrl+o to open selected file in VS Code
export FZF_DEFAULT_OPTS='--preview "[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (bat --color=always {} || highlight -O ansi -l {} || cat {}) 2> /dev/null | head -500"'
export FZF_COMPLETION_TRIGGER='\'
export FZF_TMUX_HEIGHT='80%'
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'
export FZF_PREVIEW_COMMAND='[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (bat --color=always {} || highlight -O ansi -l {} || cat {}) 2> /dev/null | head -500'

bindkey -e

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


function gi() { curl -sLw n https://www.gitignore.io/api/$@ ;}

source /Users/guoliang/Library/Preferences/org.dystroy.broot/launcher/bash/br
export PATH="$HOME/.local/bin:$PATH"
#export PATH="/usr/local/bin/:$PATH:/usr/local/sbin"
#export PATH="/usr/local/opt/llvm/bin:$PATH"
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git    --work-tree=$HOME"
alias ds=dotfiles
