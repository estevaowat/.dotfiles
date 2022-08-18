################################# ALIASES ################

ZSH_THEME="spaceship"
dotfiles="$HOME/.dotfiles"
alias code=codium
alias vi=nvim
alias lzd='lazydocker'
export ZSH="$HOME/.oh-my-zsh"

################################ PLUGINS #################

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/

plugins=(
   alias-finder             # https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/alias-finder
   bgnotify                 # https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/bgnotify
   copyfile                 # https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/copyfile
   copybuffer               # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/copybuffer
   common-aliases           # https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/common-aliases/common-aliases.plugin.zsh
   command-not-found        # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/command-not-found
   copypath                 # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/copypath
   docker                   # https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/docker
   docker-compose           # https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/docker-compose
   fast-syntax-highlighting # https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/fast-syntax-highlighting
   git                      # https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/git
   history                  # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/history
   yarn                     # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/yarn
   zsh-autosuggestions      # https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/zsh-autosuggestions
   zsh-completions          # https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/zsh-completions
)

########################## SPACESHIP CONFIGURATION ###########################

SPACESHIP_PROMPT_ORDER=(
   user
   dir
   host
   git
   node
   gradle
   maven 
   docker
   aws
   exec_time
   line_sep
   char
)

SPACESHIP_USER_SHOW=always
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SUFFIX=" "

### oh-my-zsh configuration
source $ZSH/oh-my-zsh.sh 

### iterm2 integration
test -e $HOME/.iterm2_shell_integration.zsh && source $HOME/.iterm2_shell_integration.zsh || true

########################## ADD PATHS TO PATH ENVIRONMENT VARIABLES ##############################

### LIQUIBASE
export PATH="/usr/local/opt/liquibase/libexec:$PATH"

### SDKMAN
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

### GRAALVM
export GRAALVM_HOME="$HOME/.sdkman/candidates/java/22.1.0.r17-grl"
export PATH="$GRAALVM_HOME/bin:$PATH"

. /usr/local/opt/asdf/libexec/asdf.sh
