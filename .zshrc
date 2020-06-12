# zsh configuration
export ZSH="/Users/woowahan/.config/.oh-my-zsh"

plugins=(
    git
    ripgrep
    fzf
    autojump
    direnv
)

ZSH_THEME=robbyrussell

source $ZSH/oh-my-zsh.sh

# global
export LANG='ko_KR.UTF-8'
export LC_ALL='ko_KR.UTF-8'

# git
export GIT_AUTHOR_NAME="Hwanjin Jeong"
export GIT_COMMITTER_NAME="Hwanjin Jeong"
export GIT_AUTHOR_EMAIL="hwanjin.jeong@woowahan.com"
export GIT_COMMITTER_EMAIL="hwanjin.jeong@woowahan.com"
export GHQ_ROOT=~/workspace/src

# editor
export EDITOR="emacsclient -c"
export GOPATH=$WORKSPACE/go
export GOROOT=$WORKSPACE/go

# emacs
alias ed="emacs --daemon"
alias er="pkill emacs && emacs --daemon"
alias e="emacsclient -c"

# k8s
alias k="kubectl "
alias kn="kubens "
alias kctx="kubectx "
# tmux
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux
fi

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
    autoload -Uz compinit
    compinit
fi

source <(kubectl completion zsh)
source <(skaffold completion zsh)
complete -F __start_kubectl k
