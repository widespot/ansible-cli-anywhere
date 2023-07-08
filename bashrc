#!/bin/bash

urlencode() {
    python -c "import urllib.parse, sys; print(urllib.parse.quote(sys.argv[1]))" $1
}

if [[ ! -z $PROXY_SECURE_HOST ]]; then
    if [[ -z $PROXY_SECURE_USERNAME ]]; then
        echo -n "PROXY_SECURE_USERNAME="
        read PROXY_SECURE_USERNAME
    fi
    echo -n "PROXY_SECURE_PASSWORD="
    read -s PROXY_SECURE_PASSWORD
    echo ""

    export http_proxy=http://$(urlencode $PROXY_SECURE_USERNAME):$(urlencode $PROXY_SECURE_PASSWORD)@$PROXY_SECURE_HOST
    export https_proxy=$http_proxy
fi
