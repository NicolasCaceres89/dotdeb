#!/bin/bash

#Logic Installing TAR Files...
tar_filepath=$1
destdir="$HOME/.local/opt"

#function tar_install()
ex () {
    mkdir -p "${destdir}"
    if tar xf "$tar_filepath" -C "$destdir"; then
        echo "Decompressing and Installing Application..."
        echo "Installed on: $destdir"
    else
        echo "Extraction Failed."
        exit 1
    fi
}

ex
