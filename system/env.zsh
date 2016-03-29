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
export EDITOR='gvim'                                            # set the editor