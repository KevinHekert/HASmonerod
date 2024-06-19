#!/usr/bin/with-contenv bashio
set -e

bashio::log.info "Test."
CONFIG_PATH=/data/options.json
cat $CONFIG_PATH

CORES="$(bashio::config 'maximum_amount_of_used_cores')"
echo $CORES