#!/bin/bash

if [[ ! -d /.init-stuff ]]; then
    mkdir /.init-stuff
    echo "Created directory /.init-stuff" >> /.init-stuff/core.txt
fi

if [[ ! -f /.init-stuff/initial-setup-repo-update ]]; then
  echo "Running initial-setup apt-get update"
  apt-get update >/dev/null
  touch /.init-stuff/initial-setup-repo-update
  echo "Finished running initial-setup apt-get update"
fi

if [[ ! -f /.init-stuff/ubuntu-required-libraries ]]; then
    echo 'Installing basic curl packages (Ubuntu only)'
    apt-get install -y libcurl3 libcurl4-gnutls-dev curl >/dev/null
    echo 'Finished installing basic curl packages (Ubuntu only)'

    touch /.init-stuff/ubuntu-required-libraries
fi
