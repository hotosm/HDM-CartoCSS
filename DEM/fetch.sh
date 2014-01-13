#!/usr/bin/env bash

DIR=${2:-'data'}
cd $DIR
echo "Working directory set to ${PWD}"
mkdir -p tmp
cd tmp
if test -z "$1"
then
    echo "Use ./script/fetch.sh W,N,E,S; ex.: 58,12,59,13"
    exit 0
fi
A=$1
BBOX=(${A//,/ })
if [[ ! ${#BBOX[@]} = 4  ]]
then
    echo "Bad bbox format, please use W,S,E,N"
    exit 1
fi
W=${BBOX[0]}
N=${BBOX[1]}
E=${BBOX[2]}
S=${BBOX[3]}
if [[ $W > $E ]]
then
    echo "West coordinate must be lower or equal to East one, got $W and $E"
    exit 1
fi
for (( x=$W; x<=$E; x++ ))
do
    for (( y=$N; y<=$S; y++ ))
    do
        FILENAME=srtm_$(printf "%02d" $x)_$(printf "%02d" $y).zip
        URL=http://srtm.csi.cgiar.org/SRT-ZIP/SRTM_V41/SRTM_Data_GeoTiff/$FILENAME
        if [ ! -f "$FILENAME" ]
        then
            echo "Downloading $URL"
            wget $URL -O $FILENAME
        fi
    done
done
echo "Done with downloads. Now unzipping"
for file in *.zip
do
    unzip -o $file
    rm readme.txt
    rm *.hdr
    rm *.tfw
done
rm *.zip