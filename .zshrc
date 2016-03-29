source ~/antigen.zsh

antigen use oh-my-zsh

antigen bundle git

#antigen theme robbyrussell
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure

# allowing vi mode on the command line
antigen bundle vi-mode

antigen bundle ssh-agent

# should be last thing in antigen list
antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply

export PATH="/home/jbuesking/anaconda2/bin:$PATH"

# for pure theme
PURE_CMD_MAX_EXEC_TIME=0

bindkey -M viins 'jj' vi-cmd-mode

# make sure ^R searches history, even in vi-mode
bindkey "^R" history-incremental-search-backward

# Incremental search is elite!
bindkey -M vicmd "/" history-incremental-search-backward
bindkey -M vicmd "?" history-incremental-search-forward

HISTFILE="$HOME/.zhistory"
HISTSIZE=10000000
SAVEHIST=10000000

setopt APPEND_HISTORY			 # Don't overwrite, append!
setopt BANG_HIST                 # Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
setopt HIST_VERIFY               # Don't execute immediately upon history expansion.

# beeps are annoying
setopt NO_BEEP

# copy with a progress bar
alias cpv="rsync -poghb --backup-dir=/tmp/rsync -e /dev/null --progress --"

alias biggest='find -type f -printf '\''%s %p\n'\'' | sort -nr | head -n 40 | gawk "{ print \$1/1000000 \" \" \$2 \" \" \$3 \" \" \$4 \" \" \$5 \" \" \$6 \" \" \$7 \" \" \$8 \" \" \$9 }"'

dirspace () {
    # get all folders (depth 1)
    # sort smallest to largest
    # strip the last line (full folder size)
    du -h --max-depth=1 $1 | sort -h | head -n -1 | tail -n 100
}

filespace () {
    # get all files recursively
    # sort smallest to largest
    # strip the last line (full folder size)
	find $1 -type f -exec du -ah {} + | sort -h | tail -n 100

}
