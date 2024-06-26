# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

SH_THEME="powerlevel10k/powerlevel10k"

# ALIASES
source $HOME/zsh/aliases/aliases.sh
# OH-MY-ZSH PLUGINS

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/

plugins=(
   bgnotify                 # https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/bgnotify
   copyfile                 # https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/copyfile
   copybuffer               # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/copybuffer
   common-aliases           # https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/common-aliases/common-aliases.plugin.zsh
   command-not-found        # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/command-not-found
   copypath                 # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/copypath
   docker                   # https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/docker
   docker-compose           # https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/docker-compose
   history                  # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/history
)

### zsh-completions
fpath=($HOME/zsh/plugins/zsh-completions $fpath)

### zsh-autosuggestions
source ~/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

### fast-syntax-highlighting
source ~/zsh/plugins/fast-syntax-highlighting/F-Sy-H.plugin.zsh

### git aliases
source ~/zsh/plugins/git/git.plugin.zsh
########################## ADD PATHS TO PATH ENVIRONMENT VARIABLES ##############################

### gradle
### source ~/zsh/plugins/gradle/gradle.plugin.zsh

### docker-compose ALIASES
source ~/zsh/plugins/docker-compose/docker-compose.plugin.zsh

### LIQUIBASE
export PATH="/usr/local/opt/liquibase/libexec:$PATH"

export PATH="/Applications/IntelliJ IDEA CE.app/Contents/MacOS:$PATH"



## zsh completion dump in cache folder
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST

## Configure java home

# Add JBang to environment
alias j!=jbang
export PATH="$HOME/.jbang/bin:$PATH"



. /usr/local/opt/asdf/libexec/asdf.sh
. ~/.asdf/plugins/golang/set-env.zsh
. ~/.asdf/plugins/java/set-java-home.zsh


# Created by `pipx` on 2024-05-06 02:57:24
export PATH="$PATH:/Users/estevaowatanabe/.local/bin"


# history
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
