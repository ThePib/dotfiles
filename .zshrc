autoload -U compinit promptinit
compinit
promptinit

ttyctl -f

# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh-history
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd nomatch
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall

zstyle ':completion:*' auto-description 'Argument : %d'
zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' format 'Auto-completion : %d'
zstyle ':completion:*' glob 1
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:]}={[:upper:]}'
zstyle ':completion:*' max-errors 2
zstyle ':completion:*' menu select=0
zstyle ':completion:*' prompt '%e errors(s)'
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' substitute 1
zstyle :compinstall filename '/home/theo/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

alias ls='ls --color=auto --group-directories-first'
alias grep='grep --color=auto'

typeset -A key

key[Home]=${terminfo[khome]}
key[End]=${terminfo[kend]}
key[Insert]=${terminfo[kich1]}
key[Delete]=${terminfo[kdch1]}
key[PageUp]=${terminfo[kpp]}
key[PageDown]=${terminfo[knp]}

[[ -n "${key[Home]}"     ]]  && bindkey  "${key[Home]}"     beginning-of-line
[[ -n "${key[End]}"      ]]  && bindkey  "${key[End]}"      end-of-line
[[ -n "${key[Insert]}"   ]]  && bindkey  "${key[Insert]}"   overwrite-mode
[[ -n "${key[Delete]}"   ]]  && bindkey  "${key[Delete]}"   delete-char
[[ -n "${key[PageUp]}"   ]]  && bindkey  "${key[PageUp]}"   beginning-of-buffer-or-history
[[ -n "${key[PageDown]}" ]]  && bindkey  "${key[PageDown]}" end-of-buffer-or-history

setopt prompt_subst
autoload -U colors && colors

_newline=$'\n'
_lineup=$'\e[1A'
_linedown=$'\e[1B '

# vcs
autoload -Uz vcs_info
zstyle ':vcs_info:*' stagedstr '%F{green}•'
zstyle ':vcs_info:*' unstagedstr '%F{yellow}•'
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' enable git
precmd () {
	if [[ -z $(git ls-files --other --exclude-standard 2> /dev/null) ]] {
		zstyle ':vcs_info:*' formats 'git [%b] %c%u%f'
	} else {
		zstyle ':vcs_info:*' formats 'git [%b] %F{red}•%c%u%f'
	}
	vcs_info
}

PROMPT='%F{white}┌────────────────────────── %F{yellow}%~/%f ${_newline}%F{white}└(%F{red}$?%f)─[%F{blue}%n@%m%f%#]─╼ '
RPROMPT='%{${_lineup}%}%F{green}${vcs_info_msg_0_}%{${_linedown}%}'

#export PATH=/home/theo/build/raspberry_pi/tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian-x64/bin:$PATH
