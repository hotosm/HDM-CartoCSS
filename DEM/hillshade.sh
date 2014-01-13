#!/usr/bin/env bash
DIR=${1:-'data'}
ROOT=$PWD
cd $DIR
echo "Working directory set to ${PWD}"
mkdir -p hillshade
mkdir -p contour
mkdir -p tmp
cd tmp
echo "Now processing tif files"
for file in *.tif
do
    proj_path=${file/.tif}-3857.tif
    hillshade_path=../hillshade/${file/.tif}-hillshade-3857.tif
    contour_path=../contour/${file/.tif}-contour-25m-3857.shp
    gdalwarp -s_srs EPSG:4269 -t_srs EPSG:3857 -r bilinear $file $proj_path
    if [ ! -f "$hillshade_path" ]
    then
        echo "Doing hillshade for $file"
        # gdaldem slope $proj_path $hillshade_path
        # gdaldem color-relief -co compress=lzw $hillshade_path ../slope.ramp $hillshade_path
        # gdaldem hillshade -co compress=lzw -compute_edges $proj_path $hillshade_path -alt 80
        # gdal_calc.py -A $hillshade_path --outfile=$hillshade_path --calc="A*(A>5)" --NoDataValue=0
        gdaldem hillshade -co compress=lzw -compute_edges $proj_path $hillshade_path
        gdaldem color-relief $hillshade_path -alpha $ROOT/shade.ramp $hillshade_path
    fi
    if [ ! -f "$contour_path" ] 
    then
        echo "Doing contour for $file"
        gdal_contour -a height $proj_path $contour_path -i 25.0
    fi
    rm $proj_path
done
