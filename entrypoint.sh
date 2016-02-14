#!/bin/bash

if [[ -e 'apt-packages' ]]; then
    APT_PACKAGES=$(cat 'apt-packages')
    apt-get update
    apt-get install -y $APT_PACKAGES
fi

/env/bin/pip wheel $@
