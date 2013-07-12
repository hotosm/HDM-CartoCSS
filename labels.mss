/* LABELS.MSS CONTENTS:
 * - place names
 * - area labels
 * - waterway labels 
 */

/* Font sets are defined in palette.mss */

/* Mapnik does not yet support character-spacing adjustments for 
   labels placed along a line. We can fake this using the replace()
   function in the text-name parameter by replacing each character
   with itself followed by one or more spaces. */

/* ================================================================== */
/* PLACE NAMES
/* ================================================================== */

#place::country[type='country'][zoom>3][zoom<9] {
  text-name:'[name]';
  text-face-name:@sans_bold;
  text-placement:point;
  text-fill:@country_text;
  text-halo-fill: @country_halo;
  text-halo-radius: 1;
  [zoom=3] {
    text-size:10 + @text_adjust;
    text-wrap-width: 40;
  }
  [zoom=4] {
    text-size:11 + @text_adjust;
    text-wrap-width: 50;
  }
  [zoom>4] {
    text-halo-radius: 2;
  }
  [zoom=5] {
    text-size:11 + @text_adjust;
    text-wrap-width: 50;
    text-line-spacing: 1;
  }
  [zoom=6] {
    text-size:12 + @text_adjust;
    text-character-spacing: 1;
    text-wrap-width: 80;
    text-line-spacing: 2;
  }
  [zoom=7] {
    text-size:14 + @text_adjust;
    text-character-spacing: 2;
  }
}

#place::state[type='state'][zoom>=5][zoom<=10] {
  text-name:'[name]';
  text-face-name:@sans_bold_italic;
  text-placement:point;
  text-fill:@state_text;
  text-halo-fill: @state_halo;
  text-halo-radius: 1;
  [zoom=6] {
    text-size:10 + @text_adjust;
    text-wrap-width: 40;
  }
  [zoom=7] {
    text-size:11 + @text_adjust;
    text-wrap-width: 50;
  }
  [zoom>8] {
    text-halo-radius: 2;
  }
  [zoom=8] {
    text-size:11 + @text_adjust;
    text-wrap-width: 50;
    text-line-spacing: 1;
  }
  [zoom=9] {
    text-size:12 + @text_adjust;
    text-character-spacing: 1;
    text-wrap-width: 80;
    text-line-spacing: 2;
  }
  [zoom=10] {
    text-size:14 + @text_adjust;
    text-character-spacing: 2;
  }
}

/* ---- Cities ------------------------------------------------------ */

#place::city[type='city'][zoom>=8][zoom<=15] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:@city_text;
  text-halo-fill:@city_halo;
  text-halo-radius:2;
  [zoom<=8] {
    text-size: 10;
    text-halo-radius:1;
  }
  [zoom=9] {
    text-size:10;
    text-wrap-width: 60;
  }
  [zoom=10] {
    text-size:11;
    text-wrap-width: 70;
  }
  [zoom=11] {
    text-size:12;
    text-character-spacing: 1;
    text-wrap-width: 80;
  }
  [zoom=12] {
    text-size:13;
    text-character-spacing: 1;
    text-wrap-width: 100;
  }
  [zoom=13] {
    text-size:14;
    text-character-spacing: 2;
    text-wrap-width: 200;
    text-transform: uppercase;
  }
  [zoom=14] {
    text-size:15;
    text-character-spacing: 4;
    text-wrap-width: 300;
    text-transform: uppercase;
  }
  [zoom=15] {
    text-size:16;
    text-character-spacing: 6;
    text-wrap-width: 400;
    text-transform: uppercase;
  }
}

/* ---- Towns ------------------------------------------------------- */

#place::town[type='town'][zoom>=9][zoom<=17] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:@town_text;
  text-size:9;
  text-halo-fill:@town_halo;
  text-halo-radius:1;
  text-wrap-width: 50;
  [zoom>=10] {
    text-halo-radius:2;
    text-size: 10;
  }
  [zoom>=11]{ text-size:11; }
  [zoom>=12]{
    text-size:12;
  }
  [zoom>=13]{
    text-transform: uppercase;
    text-character-spacing: 1;
  }
  [zoom>=14]{
    text-size:13;
    text-character-spacing: 2;
  }
  [zoom>=15]{
    text-size:14;
    text-character-spacing: 3;
  }
  [zoom>=15]{
    text-size:15;
    text-line-spacing: 5;
  }
  [zoom>=17]{
    text-size:16;
    text-line-spacing: 6;
  }
}

/* ---- Other small places ------------------------------------------ */

#place::small[type='village'][zoom>=11][zoom<=20],
#place::small[type='suburb'][zoom>=13][zoom<=20],
#place::small[type='hamlet'][zoom>=13][zoom<=20],
#place::small[type='neighbourhood'][zoom>=13][zoom<=20] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:@other_text;
  text-size:10;
  text-halo-fill:@other_halo;
  text-halo-radius:1;
  text-wrap-width: 30;
  text-min-distance: 100;
  text-avoid-edges: true;
  text-label-position-tolerance: 10;
  [zoom>=13] {
    text-min-distance: 50;
  }
  [zoom>=14] {
    text-size:11;
    text-character-spacing: 1;
    text-wrap-width: 40;
    text-line-spacing: 1;
  }
  [zoom>=15] {
    text-halo-radius: 2;
    text-transform: uppercase;
    text-character-spacing: 1;
    text-wrap-width: 60; 
    text-line-spacing: 1;
    text-min-distance: 30;
  }
  [zoom>=16] {
    text-size:12;
    text-character-spacing: 2;
    text-wrap-width: 120;
    text-line-spacing: 2;
    text-min-distance: 10;
  } 
  [zoom>=17] {
    text-size:13; 
    text-character-spacing: 3;
    text-wrap-width: 160;
    text-line-spacing: 4;
  }
  [zoom>=18] {
    text-size:14;
    text-character-spacing: 4;
    text-line-spacing: 6;
  }
}

#place::small[type='locality'][zoom>=15] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:@locality_text;
  text-size:9;
  text-halo-fill:@locality_halo;
  text-halo-radius:1;
  text-wrap-width: 30;
  [zoom>=16] {
    text-size:10;
    text-wrap-width: 60;
    text-line-spacing: 1;
  }
  [zoom>=17] {
    text-size:11;
    text-wrap-width: 120;
    text-line-spacing: 2;
  }
  [zoom>=18] {
    text-size:12;
    text-character-spacing: 1;
    text-line-spacing: 4;
  }
}


// =====================================================================
// POI LABELS
// =====================================================================

#poi-point::label[zoom>=17] {
    text-name: "";
    text-face-name: @sans;
    text-size: 10;
    text-wrap-width: 30;
    text-fill: @poi_text;
    text-halo-fill: @poi_halo;
    text-dy: 12;
    text-dx: 12;
    text-placement: point;
    text-halo-radius: 2;
    text-label-position-tolerance: 18;
    text-placement-type: simple;
    text-placements: "S,N,W,E";
    text-avoid-edges: true;
    [zoom>=17] {
        /* Prio */
        [amenity='townhall'],
        [amenity='fire_station'],
        [amenity='hospital'] {
            text-name: "[name]";
            [zoom>=19] {
                text-face-name: @sans_bold;
            }
        }
        [amenity='school'],
        [amenity='university'],
        [office='government'],
        [amenity='pharmacy'] {
            text-min-distance: 100;
            text-name: "[name]";
            [zoom>=19] {
                text-face-name: @sans_bold;
            }
        }
    }
    [zoom>=18] {
        /* Prio */
        [amenity='courthouse'],
        [amenity='bank'],
        [amenity='post_office'],
        [highway='bus_stop'] {
            text-name: "[name]";
        }
        [office='ngo'],
        [tourism='alpine_hut'],
        [tourism='guest_house'],
        [tourism='hostel'],
        [tourism='hotel'],
        [tourism='motel'], 
        [tourism='viewpoint'],
        [tourism='camp_site'],
        [tourism='museum'],
        [leisure='beach_resort'],
        [amenity='library'],
        [amenity='theatre'],
        [amenity='restaurant'],
        [amenity='kindergarten'],
        [amenity='cafe'],
        [amenity='bar'],
        [amenity='studio'],
        [amenity='car_rental'],
        [amenity='money_transfer'],
        [amenity='fuel'],
        [amenity='social_facility'],
        [amenity='dentist'],
        [amenity='arts_centre'],
        [amenity='fast_food'],
        [amenity='pub'],
        [amenity='place_of_worship'] {
            text-name: "[name]";
        }
    }
    [zoom>=19] {
        [amenity='cinema'],
        [shop!=null] {
            text-name: "[name]";
            text-fill: @poi_text2;
        }
    }
}
// =====================================================================
// AREA LABELS
// =====================================================================

#area_label {
  // Bring in labels gradually as one zooms in, bases on polygon area
  [zoom>=12][area>102400000],
  [zoom>=13][area>25600000],
  [zoom>=14][area>1600000],
  [zoom>=15][area>320000],
  [zoom>=16][area>80000],
  [zoom>=17][area>20000],
  [zoom>=18][area>5000],
  [zoom>=19][area>=0] {
    text-name: "[name]";
    text-halo-radius: 1.5;
    text-face-name:@sans;
    text-size: 11;
    text-wrap-width:30;
    text-fill: #888;
    text-halo-fill: #fff;
    // Specific style overrides for different types of areas:
    [type='park'][zoom>=10] {
      text-face-name: @sans_lt_italic;
      text-fill: @park * 0.6;
      text-halo-fill: lighten(@park, 10);
    }
    [type='golf_course'][zoom>=10] {
      text-fill: @sports * 0.6;
      text-halo-fill: lighten(@sports, 10);
    }
    [type='cemetery'][zoom>=10] {
      text-fill: @cemetery * 0.6;
      text-halo-fill: lighten(@cemetery, 10);
    }
    [type='hospital'][zoom>=10] {
      text-fill: @hospital * 0.6;
      text-halo-fill: lighten(@hospital, 10);
    }
    [type='college'][zoom>=10],
    [type='school'][zoom>=10],
    [type='university'][zoom>=10] {
      text-fill: @school * 0.6;
      text-halo-fill: lighten(@school, 10);
    }
    [type='water'][zoom>=10] {
      text-fill: @water * 0.6;
      text-halo-fill: lighten(@water, 10);
    }
  }
  [zoom=15][area>1600000],
  [zoom=16][area>80000],
  [zoom=17][area>20000],
  [zoom=18][area>5000] {
    text-name: "[name]";
    text-size: 13;
    text-wrap-width: 60;
    text-character-spacing: 1;
    text-halo-radius: 2;
  }
  [zoom=16][area>1600000],
  [zoom=17][area>80000],
  [zoom=18][area>20000] {
    text-size: 15;
    text-character-spacing: 2;
    text-wrap-width: 120;
  }
  [zoom>=17][area>1600000],
  [zoom>=18][area>80000] {
    text-size: 20;
    text-character-spacing: 3;
    text-wrap-width: 180;
  }
}


/* ================================================================== */
/* WATERWAY LABELS
/* ================================================================== */

#waterway_label[type='river'][zoom>=13],
#waterway_label[type='canal'][zoom>=15],
#waterway_label[type='stream'][zoom>=17] {
  text-name: '[name]';
  text-face-name: @sans_italic;
  text-fill: darken(@water,30%);
  text-halo-fill: lighten(@water,10%);
  text-halo-radius: 1;
  text-placement: line;
  text-min-distance: 400;
  text-size: 10;
  [type='river'][zoom=14],
  [type='canal'][zoom=16],
  [type='stream'][zoom=18] {
    text-name: "[name].replace('([\S\ ])','$1 ')";
  }
  [type='river'][zoom=15],
  [type='canal'][zoom=17] {
    text-size: 11;
    text-name: "[name].replace('([\S\ ])','$1 ')";
  }
  [type='river'][zoom>=16],
  [type='canal'][zoom>=18] {
    text-size: 14;
    text-name: "[name].replace('([\S\ ])','$1 ')";
    text-spacing: 300;
  }
}

/* ================================================================== */
/* ROAD LABELS
/* ================================================================== */

#motorway_label[type='motorway'][zoom>9],
#motorway_label[type='trunk'][zoom>9] {
  text-name:"[name]";
  text-face-name:@sans_bold;
  text-placement:line;
  text-fill:@road_text;
  text-halo-fill:@road_halo;
  text-halo-radius:1;
  text-min-distance:60;
  text-size:10;
  text-avoid-edges: true;
  [zoom=11] { text-min-distance:70; }
  [zoom=12] { text-min-distance:80; }
  [zoom=13] { text-min-distance:100; }
}

#mainroad_label[type='primary'][zoom>12],
#mainroad_label[type='secondary'][zoom>13],
#mainroad_label[type='tertiary'][zoom>13] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:line;
  text-fill:@road_text;
  text-halo-fill:@road_halo;
  text-halo-radius:1.3;
  text-min-distance:60;
  text-size:11;
  text-avoid-edges: true;
}

#minorroad_label[zoom>14] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:line;
  text-size:10;
  text-fill:@road_text;
  text-halo-fill:@road_halo;
  text-halo-radius:1;
  text-min-distance:60;
  text-size:11;
  text-avoid-edges: true;
}

/* ================================================================== */
/* ONE-WAY ARROWS
/* ================================================================== */

#motorway_label[oneway!=null][zoom>=16],
#mainroad_label[oneway!=null][zoom>=16],
#minorroad_label[oneway!=null][zoom>=16] {
  marker-placement:line;
  marker-max-error: 0.5;
  marker-spacing: 200;
  marker-file: url('icons/oneway.svg');
  [oneway=-1] { marker-file: url('icons/oneway-reverse.svg'); }
  [zoom=16] { marker-transform: "scale(0.5)"; }
  [zoom=17] { marker-transform: "scale(0.75)"; }
}


/* ****************************************************************** */

/* ================================================================== */
/* ADMIN LABELS
/* ================================================================== */

#admin-label-1-4[zoom>=10],
#admin-label-5-10[zoom>=13] {
  text-name: "'      '+[name]+'      '";
  text-fill: @admin_2_text;
  text-size: 10;
  text-placement: line;
  text-face-name: @sans_lt_italic;
  text-halo-radius: 2;
  text-halo-fill: @place_halo;
  text-min-padding: 50;
  text-min-distance: 50;
  text-max-char-angle-delta: 10;
}


/* ================================================================== */
/* HOUSENUMBERS
/* ================================================================== */


#housenumber[zoom>=17]{
  text-name: "[housenumber]";
  text-placement: interior;
  text-face-name: @sans;
  text-fill: @road_text;
  text-size: 7;
  [zoom=17][mod5='no'] {
    text-name: "";
  }
  [zoom >= 18] {
    text-size: 9;
  }
}

/* ================================================================== */
/* NATURAL
/* ================================================================== */

#natural_point_label[type='bay'][zoom>=10] {
  text-name: '[name]';
  text-face-name: @sans_italic;
  text-fill: darken(@water,30%);
  text-halo-fill: lighten(@water,10%);
  text-halo-radius: 1;
  text-size: 11;
}

#natural_point_label[type='peak'][zoom>=12] {
  text-name: '"▲"';
  text-face-name: @sans_lt_italic;
  text-fill: @peak;
  text-size: 10;
  text-min-distance: 50;
  ::name[name!=""][zoom>=13] {
    text-name: '[name]';
    text-face-name: @sans_lt_italic;
    text-fill: @peak;
    text-size: 10;
    text-dy: -6;
    [ele!=null] {
      text-name: '[name] + " (" + [ele] + ")"';
    }
  }
}