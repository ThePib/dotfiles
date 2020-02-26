# fish configuration

alias l='exa'
alias ls='exa'
alias ll='exa -lgh --git'
alias la='exa -algh --git'
alias vim='nvim'

set -x EDITOR nvim
set -x GOPATH $HOME/go
set -x NPM_CONFIG_PREFIX $HOME/.node_modules
set -x PATH (python -m site --user-base)/bin $HOME/go/bin $HOME/.cargo/bin $HOME/.node_modules/bin $HOME/.bin /usr/local/go/bin $PATH
set -x TERM xterm-256color
set -x TERMINAL kitty
set -x VISUAL nvim

set -g theme_color_scheme zenburn
set -g theme_display_cmd_duration no
set -g theme_display_date no
set -g theme_display_k8s_context yes

set -e SSH_AGENT_PID
set -x SSH_AUTH_SOCK (gpgconf --list-dirs agent-ssh-socket)

eval (python -m virtualfish)

direnv hook fish | source

if test -z $DISPLAY; and test (tty) = "/dev/tty1"
	exec startx
end
