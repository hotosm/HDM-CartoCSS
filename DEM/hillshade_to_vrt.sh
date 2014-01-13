#!/usr/bin/env bash
SRC=${1:-$PWD/data}
DEST=${2:-data}
gdalbuildvrt $DEST/hillshade.vrt $SRC/hillshade/*.tif
