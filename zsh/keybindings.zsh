# bind jj to take us into vi-mode
bindkey -M viins 'jj' vi-cmd-mode

# make sure ^R searches history, even in vi-mode
bindkey "^R" history-incremental-search-backward

# Incremental search is elite!
bindkey -M vicmd "/" history-incremental-search-backward
bindkey -M vicmd "?" history-incremental-search-forward
