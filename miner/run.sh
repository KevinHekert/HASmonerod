#!/usr/bin/with-contenv bashio
CONFIG_PATH=/data/options.json
CORES="$(bashio::config 'maximum_amount_of_used_cores')"
echo $CORES