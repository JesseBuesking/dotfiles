source $ZSH/antigen.zsh

# adds aliases I don't care for...
#antigen bundle git

#antigen theme robbyrussell
#antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure

# allowing vi mode on the command line
antigen bundle vi-mode

antigen bundle ssh-agent

# should be last thing in antigen list
antigen bundle zsh-users/zsh-syntax-highlighting

antigen bundle paulirish/git-open

antigen apply
