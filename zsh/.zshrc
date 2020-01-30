if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

alias vi=nvim
alias vim=nvim

WSL_HOST=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}')
export WSL_HOST=$WSL_HOST
export DISPLAY=$WSL_HOST:0.0
# export DISPLAY=:0.0
export LIBGL_ALWAYS_INDIRECT=1

export PATH="$PATH:$HOME/.local/bin"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --no-ignore-vcs'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash
