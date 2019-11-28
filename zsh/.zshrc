if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

alias vi=nvim
alias vim=nvim

XURL=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}')
# export DISPLAY=$XURL:0.0

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash
