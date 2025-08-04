# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/zv/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

# export http_proxy="223.6.6.6:10808"
# export https_proxy="223.6.6.6:10808"
# export http_proxy="http://$host_ip:10808"
# export https_proxy="http://$host_ip:10808"
# export all_proxy="sock5://223.6.6.6:10808"
# export ALL_PROXY="sock5://223.6.6.6:10808"


export EDITOR=nvim

eval "$(starship init zsh)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
