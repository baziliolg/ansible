#!/usr/bin/env bash
PATH=$PATH:/usr/lib/chia-blockchain/resources/app.asar.unpacked/daemon
whoami | systemd-cat -p info
echo "${PATH}" | systemd-cat -p info
chia start node harvester farmer wallet introducer | systemd-cat -p info
