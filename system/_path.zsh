export PATH="./bin:/usr/local/bin:/usr/local/sbin:$ZSH/bin:$PATH"
export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"

# ==============================================================================
# Anaconda
# ==============================================================================
export PATH="$HOME/anaconda2/bin:$PATH"

# ==============================================================================
# CUDA
# ==============================================================================
export CUDA_HOME=/usr/local/cuda

export PATH="${CUDA_HOME}/bin:$PATH"
export LD_LIBRARY_PATH="${CUDA_HOME}/lib64:$LD_LIBRARY_PATH"
export LIBRARY_PATH="${CUDA_HOME}/lib64:$LIBRARY_PATH"
export INCLUDE="${CUDA_HOME}/include:$INCLUDE"
export CPATH="${CUDA_HOME}/include:$CPATH"
export CPLUS_INCLUDE_PATH="${CUDA_HOME}/include:$CPLUS_INCLUDE_PATH"

export CUDA_PREFIX=${CUDA_HOME}
export CUDA_ROOT=${CUDA_HOME}

# ==============================================================================
# CUDNN
# ==============================================================================
export CUDNN_HOME=/usr/local/cudnn

export LD_LIBRARY_PATH="${CUDNN_HOME}/lib64:$LD_LIBRARY_PATH"
export LIBRARY_PATH="${CUDNN_HOME}/lib64:$LIBRARY_PATH"       # added for opencv
export INCLUDE="${CUDNN_HOME}/include:$INCLUDE"
export CPATH="${CUDNN_HOME}/include:$CPATH"
export CPLUS_INCLUDE_PATH="${CUDNN_HOME}/include:$CPLUS_INCLUDE_PATH"

export CUDNN_ENABLED=1

# ==============================================================================
# Torch
# ==============================================================================
#export PATH="$HOME/torch/install/bin:$PATH"
#export LD_LIBRARY_PATH="$HOME/torch/install/lib:/usr/local/lib:$LD_LIBRARY_PATH"
#export DYLD_LIBRARY_PATH="$HOME/torch/install/lib:$DYLD_LIBRARY_PATH"

#if [ -f "$HOME/torch/install/bin/torch-activate" ]
#then
#  . "$HOME/torch/install/bin/torch-activate"
#fi
#
# ==============================================================================
# Ruby
# ==============================================================================
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

# ==============================================================================
# GO
# ==============================================================================
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
