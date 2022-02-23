ZSH_THEME="spaceship"
dotfiles="$HOME/.dotfiles"
alias code=codium
################ PLUGINS #################

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/

plugins=(
   git
   vscode
   common-aliases # https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/common-aliases/common-aliases.plugin.zsh
   command-not-found
   copyfile
   alias-finder
   bgnotify
   zsh-completions
   fast-syntax-highlighting
   zsh-autosuggestions
   docker
   docker-compose
   asdf
)

export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

SPACESHIP_PROMPT_ORDER=(
   user # Username section
   dir  # Current directory section
   host # Hostname section
   git  # Git section (git_branch + git_status)
   node
   docker
   aws
   exec_time # Execution time
   line_sep  # Line break
   vi_mode   # Vi-mode indicator
   jobs      # Background jobs indicator
   exit_code # Exit code section
   char      # Prompt character
)

SPACESHIP_USER_SHOW=always
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SUFFIX=" "

### NVM configuration
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

test -e $HOME/.iterm2_shell_integration.zsh && source $HOME/.iterm2_shell_integration.zsh || true

export PATH="/usr/local/opt/liquibase/libexec:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
