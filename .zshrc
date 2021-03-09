autoload -U promptinit; promptinit
prompt spaceship

export ZSH="/Users/estevaowatanabe/.oh-my-zsh"

ZSH_THEME="spaceship"

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(
  git 
  battery
  vscode
  github
  common-aliases
  node
)

source $ZSH/oh-my-zsh.sh 

source "$HOME/.dotfiles/aliases/git/aliases.sh"

SPACESHIP_PROMPT_ORDER=(
  battery
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  node
  docker
  aws
  exec_time     # Execution time
  line_sep      # Line break
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

SPACESHIP_USER_SHOW=always
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SUFFIX=" "

### Added by Zplugin's installer
source "$HOME/.zplugin/bin/zplugin.zsh"
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
### End of Zplugin installer's chunk

zplugin light zdharma/fast-syntax-highlighting
zplugin light zsh-users/zsh-autosuggestions
zplugin light zsh-users/zsh-completions

### Android configurations 
export ANDROID_HOME=~/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

export AWS_SDK_LOAD_CONFIG=true

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/estevaowatanabe/.sdkman"
[[ -s "/Users/estevaowatanabe/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/estevaowatanabe/.sdkman/bin/sdkman-init.sh"
test -e /Users/estevaowatanabe/.iterm2_shell_integration.zsh && source /Users/estevaowatanabe/.iterm2_shell_integration.zsh || true

