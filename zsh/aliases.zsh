# reload our zsh configurations
alias reload='. ~/.zshrc'

# copy with a progress bar
alias cpv="rsync -poghb --backup-dir=/tmp/rsync -e /dev/null --progress --"
