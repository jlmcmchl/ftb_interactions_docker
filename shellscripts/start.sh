#!/bin/sh

# Fix work directory
# Some GUIs set wrong working directory which breaks relative paths
cd -- "$(dirname "$0")"

# Read pack related settings from external setting file
. ./settings.sh

# cleaner code 2
start_server() {
    "$JAVACMD" -server -Xms${MIN_RAM} -Xmx${MAX_RAM} ${JAVA_PARAMETERS} -jar ${FORGEJAR} nogui
}

echo "Starting server"
start_server
