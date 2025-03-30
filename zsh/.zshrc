# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

SH_THEME="powerlevel10k/powerlevel10k"

# ALIASES
fpath=($HOME/zsh/plugins/zsh-completions $fpath)

source $HOME/zsh/aliases/aliases.sh
source $HOME/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/zsh/plugins/fast-syntax-highlighting/F-Sy-H.plugin.zsh
source $HOME/zsh/plugins/git/git.plugin.zsh
source $HOME/zsh/plugins/docker-compose/docker-compose.plugin.zsh

export PATH="/usr/local/opt/liquibase/libexec:$PATH"
export PATH="/Applications/IntelliJ IDEA CE.app/Contents/MacOS:$PATH"

## zsh completion dump in cache folder
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST

# Add JBang to environment
alias j!=jbang
export PATH="$HOME/.jbang/bin:$PATH"

. ~/.asdf/plugins/golang/set-env.zsh
. ~/.asdf/plugins/java/set-java-home.zsh

# Created by `pipx` on 2024-05-06 02:57:24
#
# export GOPATH=$(asdf where golang)/packages
ASDF_DEFAULT_TOOL_VERSIONS_FILENAME=.tool-versions
ASDF_DATA_DIR=/Users/estevaowatanabe/.asdf
ASDF_CONFIG_FILE=/Users/estevaowatanabe/.asdfrc

export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
export GOROOT=$(asdf where golang)/go
export PATH="${PATH}:$(go env GOPATH)/bin"
export PATH="$PATH:/Users/estevaowatanabe/.local/bin"
export PATH="$PATH:$GOPATH"
export PATH="$PATH:$GOBIN"
# history
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS

export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix --hidden --follow --exclude .git'

export FZF_CTRL_T_OPTS="
  --walker-skip .git,node_modules,target
  --preview 'bat -n --color=always {}'
  --bind 'ctrl-/:change-preview-window(down|hidden|)'"

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# To customize prompt, run `p10k configure` or edit ~/.dotfiles/p10k/.p10k.zsh.
[[ ! -f ~/.dotfiles/p10k/.p10k.zsh ]] || source ~/.dotfiles/p10k/.p10k.zsh

