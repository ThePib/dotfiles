# fish configuration

alias l='exa'
alias ls='exa'
alias ll='exa -lgh --git'
alias la='exa -algh --git'
alias otp='oathtool --totp -b (cat $HOME/.pd_otp_secret) | xclip -sel clip'
alias vim='nvim'

set -x EDITOR nvim
set -x TERMINAL kitty
set -x PATH $HOME/.cargo/bin $PATH
set -x VISUAL nvim

set -g theme_color_scheme zenburn
set -g theme_display_cmd_duration no
set -g theme_display_date no

if test -z $DISPLAY; and test (tty) = "/dev/tty1"
	exec startx
end
