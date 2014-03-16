/* BASE.MSS CONTENTS
 * - Landuse & landcover
 * - Buildings
 * - Relief
 * - Water areas
 * - Water ways
 * - Administrative boundaries
 * - Barrier points
 * - Barrier lines
 */

/* ================================================================== */
/* LANDUSE & LANDCOVER
/* ================================================================== */

#land-low[zoom>=0][zoom<10],
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
  [type='landfill']      {
    polygon-fill: darken(@industrial,10%);
    [landfill_type="underwater"] { polygon-fill: darken(@water,1%);}
  }
  [type='quarry']        { polygon-fill: @industrial; }
  [type='pedestrian']    { polygon-fill: @pedestrian_case; }
  [type='residential']   { polygon-fill: @residential; }
  [type='retail']        { polygon-fill: @residential; }
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
  [type='beach']         { polygon-fill: @beach; }
  [type='military']      {
    [zoom<=9] {
      polygon-fill: @military;
      polygon-opacity: 0.4;
    }
    [zoom>=10] {
      polygon-pattern-file:url('icons/pattern/military-36.png');
    }
  }
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
  line-color: @wooded;
  line-opacity:  0.8;
  polygon-fill: @wooded;
  polygon-opacity: 0.4;
  line-width: 0.5;
  [zoom>=10] {
    line-dasharray: 5,3;
    line-width: 1;
    polygon-opacity: 0.3;
  }
  [zoom>=12] {
    line-width: 1.5;
    line-dasharray: 10,5;
    polygon-opacity: 0.2;
  }
  [zoom>=14] {
    line-width: 2.0;
  }
}

/* ================================================================== */
/* BUILDINGS
/* ================================================================== */

#buildings[zoom>=14] {
  polygon-fill: @building;
  line-color: darken(@building, 5%);
  line-width: 0.2;
  [poi='yes'] {
    polygon-fill: darken(@building, 5%);
    line-color: darken(@building, 10%);
  }

  [zoom>=16] {
    line-color:darken(@building,10%);
    line-width: 0.4;
    [poi='yes'] {
      line-color: darken(@building, 15%);
    }
  }

  [zoom>=18] {
    line-color:darken(@building,20%);
  }

  [type="collapsed"],
  [type="damaged"] {
    [zoom>=19] {
      polygon-fill: lighten(@building, 3%);
    }
    line-width: 0.5;
    line-color: @damaged;
    [zoom=18] {
      line-width: 0.6;
    }
    [zoom>=19] {
      line-dasharray: 6,3;
      line-width: 0.7;
    }
    [type="collapsed"] {
      line-color: @collapsed;
    }
  }

}


/* ================================================================== */
/* RELIEF
/* ================================================================== */

#hillshade[zoom>=4]{
    raster-scaling: bilinear;
    raster-comp-op: multiply;
    raster-opacity: 0.85;

    [zoom>=5]  {raster-opacity: 0.65;}
    [zoom>=7]  {raster-opacity: 0.55;}
    [zoom>=9]  {raster-opacity: 0.45;}
    [zoom>=10] {raster-opacity: 0.40;}
    [zoom>=14] {raster-opacity: 0.30;}
    [zoom>=16] {raster-opacity: 0.25;}
}

#contour_line[zoom>=12]{
  line-width: 0.2;
  line-color: @contour_line;
  [zoom>=15] {
    line-width: 0.5;
  }
  [height=100], [height=200], [height=300], [height=400], [height=500],
  [height=600], [height=700], [height=800], [height=900], [height=1000],
  [height=1100], [height=1200], [height=1300], [height=1400], [height=1500],
  [height=1600], [height=1700], [height=1800], [height=1900], [height=2000],
  [height=2100], [height=2200], [height=2300], [height=2400], [height=2500],
  [height=3000], [height=3500],
  [height=4000], [height=4500],
  [height=5000], [height=5500],
  [height=6000], [height=6500],
  [height=7000], [height=7500],
  [height=8000] {
    line-width: 0.5;
    [zoom>=15] {
      line-width: 1;
      text-name: "[height]";
      text-face-name: @sans_lt;
      text-placement: line;
      text-fill: @contour_line;
      text-halo-fill: @land;
      text-halo-radius: 1;
      text-spacing: 500;
    }
  }
}


/* ================================================================== */
/* WATER AREAS
/* ================================================================== */

Map {
  background-color: @water;
  buffer-size: 256;
}

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
  line-cap: round;
  line-join: round;
  [type='river'],
  [type='canal'] {
    [seasonal='yes']{
      line-cap: butt;
      line-color: @water;
      [zoom=10] {
        line-width: 0.4;
        line-dasharray: 6,3;
      }
      [zoom=11] {
        line-width: 0.6;
        line-dasharray: 8,4;
      }
      [zoom=12] {
        line-width: 0.8;
        line-dasharray: 12,6;
      }
    }    
   
  [zoom=8] { line-width: 0.1; }
  [zoom=9] { line-width: 0.2; }
  [zoom=10]{ line-width: 0.4; }
  [zoom=11]{ line-width: 0.6; }
  [zoom=12]{ line-width: 0.8; }
  }
}

#waterway_med[zoom>=13][zoom<=14] {
  line-color: @water;
  [type='river'],
  [type='canal'] {
    line-cap: round;
    line-join: round;
    [seasonal='yes']{
      line-cap: butt;
      line-color: @water;
      [zoom=13] {
        line-width: 1;
        line-dasharray: 8,4;
      }
      [zoom=14] {
        line-width: 1.5;
        line-dasharray: 16,6;
      }
    }    
    [zoom=13]{ line-width: 1; }
    [zoom=14]{ line-width: 1.5; }
  }
  [type='stream'] {
    [seasonal='yes'] {
      line-cap: butt;
      line-color: @water;
      [zoom=14] {
        line-width: 0.4;
        line-dasharray: 8,4;
      }
    }    
    [zoom=13]{ line-width: 0.2; }
    [zoom=14]{ line-width: 0.4; }
  }
}
  
#waterway_high[zoom>=15] {
  line-color: @water;
  line-cap: round;
  line-join: round;
  [type='river'] {
    [seasonal='yes']{
    line-cap: butt;
      line-color: @water;
      [zoom=15] {
        line-width: 6;
        line-dasharray: 24,7;
        }
      [zoom=16] {
        line-width: 7;
        line-dasharray: 28,8;
        }
      [zoom=17] {
        line-width: 8;
        line-dasharray: 32,10;
        }
      [zoom>=18] {
        line-width: 9;
        line-dasharray: 56,15;
        }
      [zoom>=19] {
        line-width: 12;
        line-dasharray: 66,20;
        }
     }   
    [zoom=15]{ line-width: 6; }
    [zoom=16]{ line-width: 7; }
    [zoom=17]{ line-width: 8; }
    [zoom=18]{ line-width: 9; }
    [zoom>=19]{ line-width: 12; }
  }
    [type='stream'] {
      [seasonal='yes']{
        line-color: @water;
        line-cap: butt;
        [zoom=15] {
          line-width: 0.6;
          line-dasharray: 24,7;
        }
        [zoom=16] {
          line-width: 0.8;     
          line-dasharray: 28,8;
        }
        [zoom=17] {
          line-width: 1;
          line-dasharray: 32,10;
        }
        [zoom=18] {
          line-width: 1.5;
          line-dasharray: 56,15;
        }
        [zoom>=19] {
          line-width: 2;
          line-dasharray: 66,20;
        }
      } 
      [zoom=15]{ line-width: 0.6; }
      [zoom=16]{ line-width: 0.8; }
      [zoom=17]{ line-width: 1; }
      [zoom=18]{ line-width: 1.5; }
      [zoom>=19]{ line-width: 2; }
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


#admin-1-4[maritime='no'][admin_level='2'][zoom>=2][zoom<5],
#admin-1-4[maritime='no'][admin_level='3'][zoom>=4][zoom<5],
#admin-1-4[maritime='no'][admin_level='4'][zoom>=4][zoom<5],
#admin-1-4[admin_level='2'][zoom>=5],
#admin-1-4[admin_level='3'][zoom>=5],
#admin-1-4[admin_level='4'][zoom>=5],
#admin-5-10[zoom>=13] {
  [zoom>=5]::outline {
    line-color: lighten(@admin_2,25%);
    line-width: 2.5;
    line-opacity: 0.3;    
    [admin_level!='2'] {
      line-color: lighten(@admin_3,25%);
    }
  }
  line-color: @admin_2;
  line-width: 0.5;
  line-dasharray: 20,10,5,10;
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
