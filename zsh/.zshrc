################################# ALIASES ################
#

ZSH_THEME="spaceship"
dotfiles="$HOME/.dotfiles"
alias code=codium
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
   gradle                   # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/gradle
   jump                     # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/jump
   nvm                      # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/nvm
   screen                   # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/screen
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
   pyenv
   docker
   aws
   exec_time
   line_sep
   vi_mode
   jobs
   exit_code
   char
)

SPACESHIP_USER_SHOW=always
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SUFFIX=" "

### oh-my-zsh configuration
source $ZSH/oh-my-zsh.sh 

### NVM configuration
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

### iterm2 integration
test -e $HOME/.iterm2_shell_integration.zsh && source $HOME/.iterm2_shell_integration.zsh || true


#### LIQUIBASE added to PATH
export PATH="/usr/local/opt/liquibase/libexec:$PATH"

### SDKMAN added to PATH 
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
