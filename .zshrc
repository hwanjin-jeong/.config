# zsh configuration
export ZSH="/Users/hwanjinjeong/.config/.oh-my-zsh"

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
export GIT_AUTHOR_EMAIL="hwanjinjeong@woowahan.com"
export GIT_COMMITTER_EMAIL="hwanjinjeong@woowahan.com"
export GHQ_ROOT=~/workspace/src

export WORKSPACE=~/workspace

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

export DOCKER_REGISTRY_USERNAME=eng_cloud_platform
export DOCKER_REGISTRY_PASSWORD='xmdhkdltm123!@#'

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

export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/Apple/usr/bin:/$WORKSPACE/bin:~/.emacs.d/bin
export PATH=$PATH:/Users/hwanjinjeong/workspace/src/git.baemin.in/devaom/saml2aws-helper
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

source <(kubectl completion zsh)
source <(skaffold completion zsh)
complete -F __start_kubectl k

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
