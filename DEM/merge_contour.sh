#!/usr/bin/env bash
DIR=${1:-'data'}
cd $DIR
echo "Working directory set to ${PWD}"
mkdir -p contour/build
COUNTER=0
contour_file=contour/build/contour-25m.shp
for file in contour/*.shp
do
    COUNTER=$[COUNTER + 1]
    echo "Processing $file $COUNTER"
    if [ "$COUNTER" = 1 ]
    then
        ogr2ogr $contour_file $file
    fi
    ogr2ogr -update -append $contour_file $file
done
shapeindex $contour_file
mv contour/build/* .
