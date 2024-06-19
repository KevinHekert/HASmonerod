#!/usr/bin/with-contenv bashio
set -e

bashio::log.info "Initialiseren."

CONFIG_PATH=/data/options.json
cat $CONFIG_PATH


CORES="$(bashio::config 'maximum_amount_of_used_cores')"
WALLET="$(bashio::config 'wallet')"
SERVER="$(bashio::config 'pool_server')"
WORKER="$(bashio::config 'worker_name')"


bashio::log.info "Starting with $CORES cores."
bashio::log.info "Used server: $SERVER."
bashio::log.info "Wallet: $WALLET."
bashio::log.info "exec /xmrig/build/xmrig -o $SERVER -u $WALLET -t $CORES -k --randomx-mode light --coin monero -p $WORKER"
exec /xmrig/build/xmrig -o $SERVER -u $WALLET -t $CORES -k --randomx-mode light --coin monero -p $WORKER