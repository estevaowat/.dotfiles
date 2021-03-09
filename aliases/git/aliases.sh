#Commands aliases

## GIT
alias gst='git status'
alias gc='git commit'
alias gco='git checkout'
alias gl='git pull'
alias gpom='git push origin master'
alias gp='git push'
alias gd='git diff | mate'
alias gb='git branch'
alias gba='git branch -a'
alias del='git branch -d'

## Projects
alias calctaxes='cd ~/Desktop/projects/calculateTaxes && yarn run exec'

##Help
aliases_help() {
echo --------- git ---------
echo gst - git status 
echo gc - git commit 
echo gco - git checkout 
echo gl - git pull 
echo gpom - git push origin master 
echo gp - git push 
echo gd - git diff or mate
echo gb - git branch 
echo gba - git branch -a 
echo del - git branch -d
echo 
echo --------- projects ---------                    
echo calctaxes - Calculate taxes to generate invoices
echo -------------------------
}

alias git_aliases_help=aliases_help