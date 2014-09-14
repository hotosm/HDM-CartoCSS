# HDM-CartoCSS

The HDM rendering is a Carto project, focusing on the [Humanitarian Data Model](http://wiki.openstreetmap.org/wiki/Humanitarian_OSM_Tags).

Preview: http://hotosm.github.io/HDM-CartoCSS/

Compare: http://hotosm.github.io/HDM-CartoCSS/compare.html

## Deploying

### Local configuration

Suggestion is to use [cartocc](https://github.com/yohanboniface/CartoCC) for managing the local config (like db credentials, path to shp...). Have a look at the `cartocc.json.sample` file to quick start

#### Workflow to use it on TileMill:

1. Clone this dir

1. Symlink it in your MapBox/project directory with the name `hdm`

1. Rename `cartocc.json.sample` to `cartocc.json` and adapt it

1. run `cartocc hdm`: this will create a `project.mml` file with correct local config in the project dir

1. Run tilemill

### Importing data

We are using PostGIS, with the default osm2pgsql import style, AND with the hstore column. Ex.:

```
osm2pgsql -G -U ybon -d hdm data/haiti-and-domrep-latest.osm.pbf --hstore --create
```

### DEM

1. get the needed tiles from [CGIAR](http://srtm.csi.cgiar.org/SELECTION/inputCoord.asp);
   for example for Burundi we need 42/12, 42/13, 43/12 and 43/13

1. run the `fetch.sh` script with West,North,East,South tiles coordinates as
   parameter, for example for Burundi it comes:

   ```./fetch.sh 42,12,43,13```

1. Then run the `hillshade.sh` script to create the hillshade

1. Then `./hillshade_to_vrt.sh` to index the hillshade in a `.vrt` file in the
   `data` directory. You need to reference this file as source for the layer
   `hillshade` in your `cartocc.json` file.

1. Generate contour lines with `merge_contour.sh`. This will generate a
   `contour-25m.shp` file in the `data` dir. Use this file for the layer
   `contour_line`.

You're done! Remember to adapt the `cartocc.json` file, and run `cartocc`.


## Licence

- stylesheet is licenced under CCO
- Nori icons are licenced under CCO
- Maki icons are © [MapBox](https://www.mapbox.com/maki/)
