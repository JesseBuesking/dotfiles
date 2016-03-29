# for pure theme -- always show the time taken for the last command
PURE_CMD_MAX_EXEC_TIME=0

fpath=($ZSH/functions $fpath)

for function_file in $ZSH/functions/*
do
  autoload -Uz ${function_file##*/}
done

setopt LOCAL_OPTIONS # allow functions to have local options
setopt LOCAL_TRAPS # allow functions to have local traps
setopt NO_BEEP # prevent beeping
