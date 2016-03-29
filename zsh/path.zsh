# ==============================================================================
# Anaconda
# ==============================================================================
export PATH="/home/jbuesking/anaconda2/bin:$PATH"

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
export PATH="$HOME/torch/install/bin:$PATH"
export LD_LIBRARY_PATH="$HOME/torch/install/lib:/usr/local/lib:$LD_LIBRARY_PATH"
export DYLD_LIBRARY_PATH="$HOME/torch/install/lib:$DYLD_LIBRARY_PATH"
. /home/jbuesking/torch/install/bin/torch-activate
#
# ==============================================================================
# Ruby
# ==============================================================================
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

# ==============================================================================
# Personal python repositories
# ==============================================================================
PYTHONREPOS="$HOME/repositories/python"
export PYTHONPATH="$PYTHONREPOS/bbds:$PYTHONREPOS/pylearn2:$PYTHONREPOS/suggs:$PYTHONREPOS/python_speech_features:$PYTHONREPOS/sloth:$PYTHONPATH"

# ==============================================================================
# Project specific exports
# ==============================================================================
export BBDS_PROJECT_PATH=/home/jbuesking/bbdsdata
export LOG_CFG=/home/jbuesking/repositories/python/bbds/logging.json

# ==============================================================================
# Miscellaneous
# ==============================================================================
export INSTALL_PREFIX=/usr/local                  # set the default install path
export TZ='US/Pacific'                                        # set the timezone
export DISPLAY=:0                                      # set the primary display
