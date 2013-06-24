/* BASE.MSS CONTENTS
 * - Landuse & landcover
 * - Water areas
 * - Water ways
 * - Administrative Boundaries
 *
 */

/* ================================================================== */
/* LANDUSE & LANDCOVER
/* ================================================================== */

#land-low[zoom>=0][zoom<6],
#land-mid[zoom>=6][zoom<10],
#land-high[zoom>=10] {
  polygon-fill: @land;
  polygon-gamma: 0.75;
}

#landuse_gen0[zoom>3][zoom<=9],
#landuse_gen1[zoom>9][zoom<=12],
#landuse[zoom>12] {
  [type='cemetery']      { polygon-fill: @cemetery; }
  [type='grave_yard']    { polygon-fill: @cemetery; }
  [type='college']       { polygon-fill: @school; }
  [type='commercial']    { polygon-fill: @industrial; }
  [type='common']        { polygon-fill: @park; }
  [type='golf_course']   { polygon-fill: @park; }
  [type='hospital']      { polygon-fill: @hospital; }
  [type='industrial']    { polygon-fill: @industrial; }
  [type='landfill']      { polygon-fill: darken(@industrial,10%); }
  [type='quarry']        { polygon-fill: @industrial; }
  [type='parking']       { polygon-fill: @parking; }
  [type='pedestrian']    { polygon-fill: @pedestrian_case; }
  [type='residential']   { polygon-fill: @residential; }
  [type='school']        { polygon-fill: @school; }
  [type='sports_centre'] { polygon-fill: @sports; }
  [type='stadium']       { polygon-fill: @sports; }
  [type='university']    { polygon-fill: @school; }
  [type='pitch']         { polygon-fill: @sports; polygon-opacity: 0.8; }
  [type='grass']         { polygon-fill: @grass; }
  [type='park']          { polygon-fill: @park; }
  [type='garden']        { polygon-fill: @park; }
  [type='village_green'] { polygon-fill: @park; }
  [type='recreation_ground'] { polygon-fill: @park; }
  [type='picnic_site']   { polygon-fill: @park; }
  [type='camp_site']   { polygon-fill: @park; }
  [type='playground']    { polygon-fill: @park; }
  [type='forest']        { polygon-fill: @wooded; }
  [type='wood']          { polygon-fill: @wooded; }
  [type='heath']         { polygon-fill: @heath; }
  [type='meadow']        { polygon-fill: @heath; }
  [type='scrub']         { polygon-fill: @heath; }
  [type='farmland']      { polygon-fill: @agriculture; }
  [type='farm']          { polygon-fill: @agriculture; }
  [type='orchard']       { polygon-fill: @agriculture; }
  [type='allotments']    { polygon-fill: @agriculture; }
  [type='military']      { polygon-fill: @military; }
  [type='beach']         { polygon-fill: @beach; }
  [type='wetland']       {
    [zoom<14] {
      polygon-fill: @wetland;
    } 
    [zoom>=14] {
      polygon-pattern-file:url('icons/pattern/marsh-36.png');
    }
  }
}

#landuse_overlays[type='nature_reserve'][zoom>6] {
  line-color: darken(@wooded,25%);
  line-opacity:  0.3;
  line-dasharray: 1,1;
  polygon-fill: darken(@wooded,25%);
  polygon-opacity: 0.1;
  [zoom=7] { line-width: 0.4; }
  [zoom=8] { line-width: 0.6; }
  [zoom=9] { line-width: 0.8; }
  [zoom=10] { line-width: 1.0; }
  [zoom=11] { line-width: 1.5; }
  [zoom>=12] { line-width: 2.0; }
}

/* ---- BUILDINGS ---- */
#buildings[zoom>=12] {
  polygon-fill:@building;
  [zoom>=14] {
    line-color:darken(@building,5%);
    line-width:0.2;
  }
  [zoom>=16] {
    line-color:darken(@building,10%);
    line-width:0.4;
  }
}


/* ================================================================== */
/* RELIEF
/* ================================================================== */

#slopeshade {
    raster-scaling: bilinear;
    raster-comp-op: multiply;
    raster-opacity: 0.4;
}

#contour_line[zoom>=13]{
  line-width: 0.3;
  line-color: @contour_line;
  [zoom>=15] { line-width: 0.3;}
}


/* ================================================================== */
/* WATER AREAS
/* ================================================================== */

Map { background-color: @water; }

#water_gen0[zoom>3][zoom<=9],
#water_gen1[zoom>9][zoom<=12],
#water[zoom>12] {
  polygon-fill: @water;
}

/* ================================================================== */
/* WATER WAYS
/* ================================================================== */

#waterway_low[zoom>=8][zoom<=12] {
  line-color: @water;
  [zoom=8] { line-width: 0.1; }
  [zoom=9] { line-width: 0.2; }
  [zoom=10]{ line-width: 0.4; }
  [zoom=11]{ line-width: 0.6; }
  [zoom=12]{ line-width: 0.8; }
}

#waterway_med[zoom>=13][zoom<=14] {
  line-color: @water;
  [type='river'],
  [type='canal'] {
    line-cap: round;
    line-join: round;
    [zoom=13]{ line-width: 1; }
    [zoom=14]{ line-width: 1.5; }
  }
  [type='stream'] {
    [zoom=13]{ line-width: 0.2; }
    [zoom=14]{ line-width: 0.4; }
  }
}
  
#waterway_high[zoom>=15] {
  line-color: @water;
  [type='river'],
  [type='canal'] {
    ::seasonal {
      line-color: lighten(@water, 10%);
      line-dasharray: 4,4;
      line-cap: butt;
    }
    ::default {
      line-color: @water;
      line-cap: round;
      line-join: round;
    }
    ::default, ::seasonal[seasonal='yes'] {
      line-width: 6;
      [zoom=16]{ line-width: 7; }
      [zoom=17]{ line-width: 8; }
      [zoom=18]{ line-width: 9; }
      [zoom>=19]{ line-width: 12; }
    }
  }
  [type='stream'] {
    [zoom=15]{ line-width: 0.6; }
    [zoom=16]{ line-width: 0.8; }
    [zoom=17]{ line-width: 1; }
    [zoom=18]{ line-width: 1.5; }
    [zoom>18]{ line-width: 2; }
  }
  [type='ditch'],
  [type='drain'] {
    [zoom=15]{ line-width: 0.1; }
    [zoom=16]{ line-width: 0.3; }
    [zoom=17]{ line-width: 0.5; }
    [zoom=18]{ line-width: 0.7; }
    [zoom=19]{ line-width: 1; }
    [zoom>19]{ line-width: 1.5; }
  }
}

/* ================================================================== */
/* ADMINISTRATIVE BOUNDARIES
/* ================================================================== */


#admin-1-4,
#admin-5-10[zoom>=13] {
  ::outline {
    line-color: lighten(@admin_2,25%);
    line-width: 2.5;
    line-opacity: 0.3;    
    [admin_level!='2'] {
      line-color: lighten(@admin_3,25%);
    }
  }
  line-color: @admin_2;
  line-width: 0.5;
  line-dasharray:5,5;
  line-opacity: 0.6;
  [admin_level!='2'] {
    line-color: @admin_3;
  }
}

/* ================================================================== */
/* BARRIER POINTS
/* ================================================================== */


.barriers[zoom>=17][barrier = 'divider'] {
  marker-height: 2;
  marker-fill: #c7c7c7;
  marker-line-opacity:0;
  marker-allow-overlap:true;
}

/* ================================================================== */
/* BARRIER LINES
/* ================================================================== */

.barriers[zoom>=17][barrier = 'gate'] {
  line-width:2.5;
  line-color:#aab;
  line-dasharray:3,2;
}

.barriers[zoom>=17][barrier = 'fence'] {
  line-width:1.75;
  line-color:#aab;
  line-dasharray:1,1;
}

.barriers[zoom>=16][barrier='hedge'] {
  ::alternate {
    line-color: @park;
  }
  line-width:2;
  line-color:darken(@park,15%);
  line-dasharray:2,4;
  line-cap: round;
  [zoom=16] {
    line-width: 1;
  }
}

.barriers[zoom>=16][barrier = 'wall'] {
  line-width:1;
  line-color: darken(@land,25%);
}
