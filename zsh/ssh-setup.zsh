# placeholder for the path to our environment file
SSH_ENV="$HOME/.ssh/environment"

function start_agent {
    echo "Initialising new SSH agent ..."
    # create the environment file
    /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
    echo "... succeeded"
    # set environment file permissions (only you can read and write)
    chmod 600 "${SSH_ENV}"
    # source the file (loads SSH_AUTH_SOCK and SSH_AGENT_PID environment vars)
    . "${SSH_ENV}" > /dev/null
    # not sure what this is doing to be honest...
    /usr/bin/ssh-add;
}

# source SSH settings, if applicable
if [ -f "${SSH_ENV}" ]; then
    # environment file exists, so source it
    . "${SSH_ENV}" > /dev/null
    # here we test if there's a running process with the PID we expect that's
    # running under the program name "ssh-agent". if not, we call
    # ``start_agent``
    #ps ${SSH_AGENT_PID} doesn't work under cywgin
    ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
        start_agent;
    }
else
    # no enviroment file, so call ``start_agent``
    start_agent;
fi
