#!/bin/bash
set -o errexit
set -o pipefail

if [ "$#" != 2 -o "$1" = "" -o "$2" = "" ]; then
    echo "Arguments: <target-host>:<target-port> <username>:<password>"
fi
TARGETHOST="$1"
B64CREDS="$(/bin/echo -n "$2" | base64)"

sed -i "s#UPSTREAM#$TARGETHOST#" /etc/nginx/sites-enabled/docker
sed -i "s#CREDENTIALS#$B64CREDS#" /etc/nginx/sites-enabled/docker
service nginx start && sleep infinity
