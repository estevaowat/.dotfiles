# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

SH_THEME="powerlevel10k/powerlevel10k"

# ALIASES 
alias code=codium
alias vi=nvim
alias lzd='lazydocker'

export nvim_config="$HOME/.dotfiles/nvim/.config/nvim/lua"

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

### iterm2 integration
test -e $HOME/.iterm2_shell_integration.zsh && source $HOME/.iterm2_shell_integration.zsh || true

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
source ~/zsh/plugins/gradle/gradle.plugin.zsh

### docker-compose ALIASES
source ~/zsh/plugins/docker-compose/docker-compose.plugin.zsh

### LIQUIBASE
export PATH="/usr/local/opt/liquibase/libexec:$PATH"

### SDKMAN
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

### GRAALVM
export GRAALVM_HOME="$HOME/.sdkman/candidates/java/22.1.0.r17-grl"
export PATH="$GRAALVM_HOME/bin:$PATH"

. /usr/local/opt/asdf/libexec/asdf.sh


