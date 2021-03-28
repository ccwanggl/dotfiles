# Customize to your needs...
source ~/.zplug/init.zsh
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

#source Prezto.
source $ZSH/init.zsh

# Plugins
zplug "plugins/git",   from:oh-my-zsh
zplug "plugins/osx",   from:oh-my-zsh
zplug "zsh-users/zsh-autosuggestions"
zplug "clvv/fasd"
zplug "b4b4r07/enhancd"
zplug "junegunn/fzf"
zplug "Peltoche/lsd"
zplug "g-plane/zsh-yarn-autocompletions"
zplug "romkatv/powerlevel10k", as:theme, depth:1

export fpath=( $HOME/.config/zsh "${fpath[@]}" )

source $HOME/.config/zsh/functions
source $HOME/.config/zsh/alias

[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh

bindkey -e

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source /Users/guoliang/Library/Preferences/org.dystroy.broot/launcher/bash/br

