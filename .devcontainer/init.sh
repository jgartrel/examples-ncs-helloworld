#!/bin/bash

apt-get -y update
apt-get -y install --no-install-recommends libcom-err2
nrf="nrfutil sdk-manager toolchain launch --ncs-version v3.4.0"
$nrf -- west init -l app/
$nrf -- west update --narrow -o=--depth=1
$nrf -- west zephyr-export
$nrf -- pip install -r deps/nrf/scripts/requirements.txt
