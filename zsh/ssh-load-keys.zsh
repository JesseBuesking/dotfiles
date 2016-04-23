if [ -f "$HOME/.machine_id" ]
then
    MACHINE_UID=$(cat $HOME/.machine_id | openssl sha256 -binary | base64)
else
    echo "no $HOME/.machine_id file found. please create it"
fi

# for desktop
if [ $MACHINE_UID = "2KlOvfw2tJKfSCLsHEJyHxJYN3ASUrp/Vzp+XHiBfcE=" ]
then
  ssh-add "$HOME/.ssh/desktop_rsa" > /dev/null 2>&1
fi

# for surface
if [ $MACHINE_UID = "VdLLJAf4OpQY1nLKcdpqZ8Cdd53EO7kYdXpCMFtn21g=" ]
then
  ssh-add "$HOME/.ssh/surface_rsa" > /dev/null 2>&1
fi

# for lappy
if [ $MACHINE_UID = "HN0IpOyNQugYUJvHOW8dBDSHahnlz3gEpdtFut3NykM=" ]
then
  ssh-add "$HOME/.ssh/lappy_rsa" > /dev/null 2>&1
fi
