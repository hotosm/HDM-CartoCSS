/* ROADS.MSS CONTENTS
 * - Road & rail lines
 * - Ferries
 * - Aeroways
 * - Railway
 */

/* ==================================================================
   ROAD & RAIL LINES
/* ================================================================== */

/* At lower zoomlevels, just show major automobile routes: motorways
and trunks. */

#roads_low[zoom>=5][zoom<=8] {
  [type='motorway'] { line-color: @motorway_line; }
  [type='trunk'] { line-color: @motorway_line; }
  [zoom=5] {
    [type='motorway'] { line-width: 0.4; }
    [type='trunk'] { line-width: 0.2; } }
  [zoom=6] {
    [type='motorway'] { line-width: 0.5; }
    [type='trunk'] { line-width: 0.25; } }
  [zoom=7] {
    [type='motorway'] { line-width: 0.6; }
    [type='trunk'] { line-width: 0.3; } }
  [zoom=8] {
    [type='motorway'] { line-width: 1; }
    [type='trunk'] { line-width: 0.5; } }
}

/* At mid-level scales start to show primary and secondary routes
as well. */

#roads_med[zoom>=9][zoom<=10] {
  [type='motorway'],
  [type='motorway_link'] {
    line-color: @motorway_line;
  }
  [type='trunk'],
  [type='trunk_link'] {
    line-color: @motorway_line;
  }
  [type='primary'] { line-color: @primary_line; }
  [type='secondary'] { line-color: @secondary_line; }
  [type='tertiary'] { line-color: @standard_line; }
  [zoom=9] {
    [type='motorway'],[type='trunk'] { line-width: 1.4; }
    [type='primary'],[type='secondary'],
    [type='motorway_link'],[type='trunk_link'] { line-width: 0.6; }
  }
  [zoom=10] {
    [type='motorway'],[type='trunk'] { line-width: 1.8; }
    [type='primary'],[type='secondary'],
    [type='motorway_link'],[type='trunk_link'] { line-width: 0.8; }
  }
}

/* Road width variables that are used in road & bridge styles */
@r11_motorway: 3;   @r11_main: 3;   @r11_inter: 1.5;  @r11_minor: 0;   @r11_narrow: 0;   @r11_noauto: 0;
@r12_motorway: 4;   @r12_main: 3.5; @r12_inter: 2;    @r12_minor: 0;   @r12_narrow: 0;   @r12_noauto: 0;
@r13_motorway: 5;   @r13_main: 4.5; @r13_inter: 3.5;  @r13_minor: 2.5; @r13_narrow: 1.5; @r13_noauto: 0;
@r14_motorway: 5;   @r14_main: 4.5; @r14_inter: 3.5;  @r14_minor: 2;   @r14_narrow: 2;   @r14_noauto: 1.2;
@r15_motorway: 6;   @r15_main: 5;   @r15_inter: 4;    @r15_minor: 3; @r15_narrow: 2.5; @r15_noauto: 1.5;
@r16_motorway: 8;   @r16_main: 8;   @r16_inter: 6;    @r16_minor: 5;   @r16_narrow: 4;   @r16_noauto: 1.7;
@r17_motorway: 10;  @r17_main: 10;  @r17_inter: 8;    @r17_minor: 6;   @r17_narrow: 5;   @r17_noauto: 2;
@r18_motorway: 16;  @r18_main: 14;  @r18_inter: 12;   @r18_minor: 8;   @r18_narrow: 8;   @r18_noauto: 3;

@c11_motorway: 1;   @c11_main: 1;   @c11_inter: 0;    @c11_minor: 0;   @c11_narrow: 0;   @c11_noauto: 0;
@c12_motorway: 1.5; @c12_main: 1.5; @c12_inter: 1;    @c12_minor: 0;   @c12_narrow: 0;   @c12_noauto: 0;
@c13_motorway: 2;   @c13_main: 2;   @c13_inter: 1;    @c13_minor: 1;   @c13_narrow: 0.2; @c13_noauto: 0;
@c14_motorway: 2;   @c14_main: 2;   @c14_inter: 1;    @c14_minor: 1;   @c14_narrow: 0.2; @c14_noauto: 1;
@c15_motorway: 2.5; @c15_main: 2;   @c15_inter: 2;    @c15_minor: 1.5; @c15_narrow: 0.2; @c15_noauto: 2;
@c16_motorway: 2.5; @c16_main: 2;   @c16_inter: 1.5;  @c16_minor: 1.5; @c16_narrow: 1;   @c16_noauto: 2;
@c17_motorway: 3;   @c17_main: 2;   @c17_inter: 2;    @c17_minor: 2;   @c17_narrow: 1;   @c17_noauto: 3;
@c18_motorway: 4;   @c18_main: 3;   @c18_inter: 3;    @c18_minor: 3;   @c18_narrow: 2;   @c18_noauto: 4;


/* ---- Casing ----------------------------------------------- */

#roads_high::minor[style='standard'][zoom>=13][zoom<=20],
#roads_high::minor[style='urban'][surface='paved'][zoom>=13][zoom<=20],
#roads_high::minor[style='urban'][surface='unpaved'][zoom>=15][zoom<=20],
#roads_high::minor[style='track'][zoom>=11][zoom<=20],
#roads_high::casing[surface='unpaved'][zoom>=11][zoom<=20] {
  /* -- colors & styles -- */
  line-cap: butt;
  line-join: round;
  line-color: @unpaved_case;
  [structure='bridge'] { line-color: darken(@unpaved_case, 20%); }
  [style="track"] {
    line-color: @track_case;
    [structure='bridge'] { line-color: darken(@track_case, 20%); }
  }
  [style='noauto'] {
    line-color: @pedestrian_case;
    line-comp-op: darken;
    [structure='bridge'] { line-color: darken(@pedestrian_case, 10%); }
  }

  /* -- widths -- */
  [zoom=11] {
    line-width: 0;
    [style='motorway'] { line-width: @r11_motorway; }
    [style='primary'], [style='secondary'] { line-width: @r11_main; }
  }
  [zoom=12] {
    line-width: 0;
    [style='motorway'] { line-width: @r12_motorway; }
    [style='primary'], [style='secondary'] { line-width: @r12_main; }
    [style='tertiary'] { line-width: @r12_inter; }
  }
  [zoom=13] {
    line-width: 0;
    [style='motorway'] { line-width: @r13_motorway; }
    [style='primary'], [style='secondary'] { line-width: @r13_main; }
    [style='tertiary'] { line-width: @r13_inter; }
    [style='standard'] { line-width: @r13_minor; }
    [style='track']{ line-width: @r13_narrow; }
  }
  [zoom=14] {
    [style='motorway'] { line-width: @r14_motorway; }
    [style='primary'], [style='secondary'] { line-width: @r14_main; }
    [style='tertiary'] { line-width: @r14_inter; }
    [style='standard'], [style='urban'][surface='paved'] { line-width: @r14_minor; }
    [style='track']{ line-width: @r14_narrow; }
    [style='noauto']   { line-width: @r14_noauto; }
  }
  [zoom=15] {
    [style='motorway'] { line-width: @r15_motorway; }
    [style='primary'], [style='secondary'] { line-width: @r15_main; }
    [style='tertiary'] { line-width: @r15_inter; }
    [style='standard'], [style='urban'] { line-width: @r15_minor; }
    [style='track'] { line-width: @r15_narrow; }
    [style='noauto'] { line-width: @r15_noauto; }
  }
  [zoom=16] {
    [style='motorway'] { line-width: @r16_motorway; }
    [style='primary'], [style='secondary'] { line-width: @r16_main; }
    [style='tertiary'] { line-width: @r16_inter; }
    [style='standard'] { line-width: @r16_minor; }
    [style='urban'] { line-width: @r16_minor; }
    [style='track']{ line-width: @r16_narrow; }
    [style='noauto']   { line-width: @r16_noauto; }
  }
  [zoom>=17] {
    [style='standard'] { line-width: @r17_minor; }
    [style='motorway'] { line-width: @r17_motorway; }
    [style='primary'], [style='secondary'] { line-width: @r17_main; }
    [style='tertiary'] { line-width: @r17_inter; }
    [style='urban']{ line-width: @r17_minor; }
    [style='track']{ line-width: @r17_narrow; }
    [style='noauto']   { line-width: @r17_noauto; }
  }
  [zoom>=18] {
    [style='motorway'] { line-width: @r18_motorway; }
    [style='primary'], [style='secondary'] { line-width: @r18_main; }
    [style='tertiary'] { line-width: @r18_inter; }
    [style='standard']{ line-width: @r18_minor; }
    [style='urban']{ line-width: @r18_minor; }
    [style='track']{ line-width: @r18_narrow; }
    [style='noauto']   { line-width: @r18_noauto; }
  }
}


#roads_high[zoom>=11][zoom<=20] {
  /* -- colors & styles -- */
  [zoom>=15][structure='bridge'] {
    bridge/line-cap: butt;
  }
  [zoom>=11] {
    line-cap: round;
    line-join: round;
  }
  [style='motorway'] {
    [zoom>=15][structure='bridge'] { bridge/line-color: darken(@motorway_case, 10%); }
    [zoom>=11] {
      line-color: @motorway_fill;
      [structure='tunnel'] { line-color: lighten(@motorway_fill, 10%); }
    }
  }
  [style='primary'] {
    [zoom>=15][structure='bridge'] { bridge/line-color: darken(@primary_case, 10%); }
    [zoom>=11] {
      line-color: @primary_fill;
      [structure='tunnel'] { line-color: lighten(@primary_fill, 10%); }
    }
  }
  [style='secondary'] {
    [zoom>=15][structure='bridge'] { bridge/line-color: darken(@secondary_case, 10%); }
    [zoom>=11] {
      line-color: @secondary_fill;
      [structure='tunnel'] { line-color: lighten(@secondary_fill, 10%); }
    }
  }
  [style='tertiary'] {
    [zoom>=15][structure='bridge'] { bridge/line-color: darken(@tertiary_case, 10%); }
    [zoom>=11] {
      line-color: @tertiary_fill;
      [structure='tunnel'] { line-color: lighten(@secondary_fill, 10%); }
    }
  }
  [style='standard'] {
    [zoom>=15][structure='bridge'] { bridge/line-color: darken(@standard_case, 15%); }
    [zoom>=11] {
      line-color: @standard_fill;
    }
  }
  [style="urban"] {
    [zoom>=15][structure='bridge'] { bridge/line-color: darken(@urban_case, 15%); }
    [zoom>=11][surface='unpaved'] {
      line-color: @unpaved_case;
    }
    [zoom>=11][surface='paved'],
    [zoom>=15][surface='unpaved'] {
      line-color: @urban_fill;
    }
  }
  [zoom>=11][surface='unpaved'] {
    line-color: @unpaved;
  }
  [style="track"] {
    [zoom>=15][structure='bridge'] { bridge/line-color: darken(@track_case, 10%); }
    [zoom>=11] {
      line-color: @track_fill;
      line-dasharray: 4,2;
      line-cap: butt;
      line-join: round;
    }
    [zoom>=16] {line-dasharray: 8,2;}
    [zoom>=18] {line-dasharray: 10,2;}
  }
  [structure='ford'] {
    line-dasharray: 8,2;
    line-cap: butt;
    line-color: darken(@water, 10%);
  }
  [style='noauto'] {
    [zoom>=15][structure='bridge'] { bridge/line-color: darken(@pedestrian_case, 15%); }
    [zoom>=11] {
      line-color: @pedestrian_fill;
      line-cap: round;
      line-dasharray: 0.1,2;
      line-comp-op: darken;
    }
  }
  [zoom>=11][condition='bad'][style!='noauto'] {
    line-dasharray: 5,0.5;
    line-cap: butt;
  }
  [zoom>=11][construction!=null] {
    line-dasharray: 10,10;
    line-cap: butt;
    line-width: 0;
  }
  /* -- widths -- */
  [zoom=11] {
    [style='urban'], [style='standard'] { line-width: @r11_minor; }
    [style='motorway'] {
      line-width: @r11_motorway;
      [surface='unpaved'] {line-width: @r11_motorway - @c11_motorway;}
    }
    [style='primary'], [style='secondary'] {
      line-width: @r11_main;
      [surface='unpaved'] {line-width: @r11_main - @c11_main;}
    }
    [style='tertiary'] { line-width: @r11_inter; }
    [style='urban']{ line-width: @r11_minor; }
    [style='track']{ line-width: @r11_narrow; }
    [style='noauto']   { line-width: 0; }
    [construction!=null] { line-width: 0; }
  }
  [zoom=12] {
    [style='urban'], [style='standard'] { line-width: @r12_minor; }
    [style='motorway'] {
      line-width: @r12_motorway;
      [surface='unpaved'] {line-width: @r12_motorway - @c12_motorway;}
    }
    [style='primary'],
    [style='secondary'] {
      line-width: @r12_main;
      [surface='unpaved'] {line-width: @r12_main - @c12_main;}
    }
    [style='tertiary'] { line-width: @r12_inter;}
    [style='urban']{ line-width: @r12_minor; }
    [style='track']{ line-width: @r12_narrow; }
    [style='noauto']   { line-width: @r12_noauto; }
    [construction!=null] { line-width: 0; }
  }
  [zoom=13] {
    [style='standard'] { line-width: @r13_minor - @c13_minor; }
    [style='urban'] {
      line-width: @r13_minor - @c13_minor;
      [surface='unpaved'] {line-width: 0.5;}
    }
    [style='motorway'] {
      line-width: @r13_motorway;
      [surface='unpaved'] {line-width: @r13_motorway - @c13_motorway;}
    }
    [style='primary'], [style='secondary'] {
      line-width: @r13_main;
      [surface='unpaved'] {line-width: @r13_main - @c13_main;}
    }
    [style='tertiary'] {
      line-width: @r13_inter;
      [surface='unpaved'] {line-width: @r13_inter - @c13_inter;}
    }
    [style='track']{line-width: @r13_narrow; }
    [style='noauto']   { line-width: @r13_noauto; }
    [construction!=null] { line-width: 0; }
  }
  [zoom=14] {
    [style='standard'] { line-width: @r14_minor - @c14_minor; }
    [style='urban'] {
      line-width: @r14_minor - @c14_minor;
      [surface='unpaved'] {line-width: 0.8;}
    }
    [style='motorway'] {
      line-width: @r14_motorway;
      [surface='unpaved'] {line-width: @r14_motorway - @c14_motorway;}
    }
    [style='primary'], [style='secondary'] {
      line-width: @r14_main;
      [surface='unpaved'] {line-width: @r14_main - @c14_main;}
    }
    [style='tertiary'] {
      line-width: @r14_inter;
      [surface='unpaved'] {line-width: @r14_inter - @c14_inter;}
    }
    [style='track']{ line-width: @r14_narrow; }
    [style='noauto']   { line-width: @r14_noauto; line-dasharray: 0.1,4; }
    [construction!=null] { line-width: 0; }
  }
  [zoom=15] {
    [style='standard'], [style='urban'] {
      [structure='bridge'] {bridge/line-width: @r15_minor;}
      line-width: @r15_minor - @c15_minor;
    }
    [style='motorway'] {
      [structure='bridge'] {bridge/line-width: @r15_motorway + @c15_motorway;}
      line-width: @r15_motorway;
      [surface='unpaved'] {line-width: @r15_motorway - @c15_motorway;}
    }
    [style='primary'], [style='secondary'] {
      [structure='bridge'] {bridge/line-width: @r15_main + @c15_main;}
      line-width: @r15_main;
      [surface='unpaved'] {line-width: @r15_main - @c15_main;}
    }
    [style='tertiary'] {
      [structure='bridge'] {bridge/line-width: @r15_inter + 1;}
      line-width: @r15_inter;
      [surface='unpaved'] {line-width: @r15_inter - @c15_inter;}
    }
    [style='track']{ line-width: @r15_narrow; }
    [style='noauto']   {
      [structure='bridge'] {bridge/line-width: @r15_noauto + 1;}
      line-width: @r15_noauto; line-dasharray: 0.1,4;
    }
    [construction!=null] { line-dasharray: 10,10; }
  }
  [zoom=16] {
    [style='standard'],
    [style='urban'] {
      [structure='bridge'] {bridge/line-width: @r16_minor;}
      line-width: @r16_minor - @c16_minor;
    }
    [style='motorway'] {
      [structure='bridge'] {bridge/line-width: @r16_motorway + @c16_motorway;}
      line-width: @r16_motorway;
      [surface='unpaved'] {line-width: @r16_motorway - @c16_motorway;}
    }
    [style='primary'], [style='secondary'] {
      [structure='bridge'] {bridge/line-width: @r16_main + 2;}
      line-width: @r16_main;
      [surface='unpaved'] {line-width: @r16_main - @c16_main;}
    }
    [style='tertiary'] {
      [structure='bridge'] {bridge/line-width: @r16_inter + 1;}
      line-width: @r16_inter;
      [surface='unpaved'] {line-width: @r16_inter - @c16_inter;}
    }
    [style='track']{ line-width: @r16_narrow - @c16_narrow; }
    [style='noauto']   {
      [structure='bridge'] {bridge/line-width: @r16_noauto + 1;}
      line-width: @r16_noauto;
      line-dasharray: 0.1,4;
    }
    [construction!=null] { line-dasharray: 10,10; }
  }
  [zoom=17] {
    [style='urban'],
    [style='standard'] {
      [structure='bridge'] {bridge/line-width: @r17_minor + @c17_minor;}
      line-width: @r17_minor - @c17_minor;
    }
    [style='motorway'] {
      [structure='bridge'] {bridge/line-width: @r17_motorway + @c17_motorway;}
      line-width: @r17_motorway;
      [surface='unpaved'] {line-width: @r17_motorway - @c17_motorway;}
    }
    [style='primary'], [style='secondary'] {
      [structure='bridge'] {bridge/line-width: @r17_main + @c17_main;}
      line-width: @r17_main;
      [surface='unpaved'] {line-width: @r17_main - @c17_main;}
    }
    [style='tertiary'] {
      [structure='bridge'] {bridge/line-width: @r17_inter + @c17_inter;}
      line-width: @r17_inter;
      [surface='unpaved'] {line-width: @r17_inter - @c17_inter;}
    }
    [style='track']{
      [structure='bridge'] {bridge/line-width: @r17_narrow + @c17_narrow;}
      line-width: @r17_narrow - @c17_narrow;
    }
    [style='noauto']   {
      [structure='bridge'] {bridge/line-width: @r17_noauto + @c17_noauto;}
      line-width: @r17_noauto;
      line-dasharray: 0.1,6;
      [type='steps'] {
        line-cap: butt;
        line-width: @r17_noauto + @c17_noauto;
        line-dasharray: 2, 2;
      }
    }
    [construction!=null] { line-dasharray: 15,10; }
  }
  [zoom>=18] {
    [style='urban'],
    [style='standard'] {
      [structure='bridge'] {bridge/line-width: @r18_minor + @c18_minor;}
      line-width: @r18_minor - @c18_minor;
    }
    [style='motorway'] {
      [structure='bridge'] {bridge/line-width: @r18_motorway + @c18_motorway;}
      line-width: @r18_motorway;
      [surface='unpaved'] {line-width: @r18_motorway - @c18_motorway;}
    }
    [style='primary'], [style='secondary'] {
      [structure='bridge'] {bridge/line-width: @r18_main + @c18_main;}
      line-width: @r18_main;
      [surface='unpaved'] {line-width: @r18_main - @c18_main;}
    }
    [style='tertiary'] {
      [structure='bridge'] {bridge/line-width: @r18_inter + @c18_inter;}
      line-width: @r18_inter;
      [surface='unpaved'] {line-width: @r18_inter - @c18_inter;}
    }
    [style='track']{
      [structure='bridge'] {bridge/line-width: @r18_narrow + @c18_narrow;}
      line-width: @r18_narrow - @c18_narrow;
    }
    [style='noauto']   {
      [structure='bridge'] {bridge/line-width: @r18_noauto + @c18_noauto;}
      line-width: @r18_noauto;
      line-dasharray: 0.1,6;
      [type='steps'] {
        line-cap: butt;
        line-width: @r18_noauto + @c18_noauto;
        line-dasharray: 2,2;
      }
    }
    [construction!=null] { line-dasharray: 15,15; }
  }
}

/* ---- Turning Circles --------------------------------------------- */
#turning_circle_case[zoom>=14] {
  marker-fill:@standard_fill;
  marker-line-color:@standard_case;
  marker-line-width:2;
  marker-allow-overlap: true;
}
#turning_circle_fill[zoom>=14] {
  marker-fill: @standard_fill;
  marker-line-width: 0;
  marker-line-opacity: 0;
  marker-allow-overlap: true;
}
#turning_circle_case,
#turning_circle_fill {
  [zoom=14] { marker-width: @r14_minor * 1.1; }
  [zoom=15] { marker-width: @r15_minor * 1.1; }
  [zoom=16] { marker-width: @r16_minor * 1.1; }
  [zoom=17] { marker-width: @r17_minor * 1.1; }
  [zoom>=18] { marker-width: @r18_minor * 1.1; }
}

/* ================================================================== */
/* FERRIES
/* ================================================================== */

#ferry[zoom>=9] {
  line-color: @ferry;
  line-width: 0.5;
  line-dasharray: 4, 4;
  [zoom>=13] {
    line-width: 0.8;
    line-dasharray: 6, 6;
  }
}

/* ================================================================== */
/* AEROWAYS
/* ================================================================== */

#aeroway[zoom>=14] {
  line-color:@aeroway;
  line-cap:butt;
  line-join:miter;
  [type='runway'] {
    [zoom=14]{ line-width:7; }
    [zoom=15]{ line-width:11; }
    [zoom=16]{ line-width:15; }
    [zoom=17]{ line-width:19; }
    [zoom>17]{ line-width:23; }
  }
  [type='taxiway'] {
    [zoom=14]{ line-width:1.5; }
    [zoom=15]{ line-width:2; }
    [zoom=16]{ line-width:3; }
    [zoom=17]{ line-width:4; }
    [zoom>17]{ line-width:5; }
  }
  [tunnel='yes'][zoom>=14][zoom<=20] {
    line-color: @land;
    line-join: round;
    /* -- widths -- */
    [zoom=14] { line-width: 1 + 1; }
    [zoom=15] { line-width: 1.5 + 1; }
    [zoom=16] { line-width: 2 + 1; }
    [zoom=17] { line-width: 3 + 2; }
    [zoom>=18] { line-width: 4 + 3; }
  }
}
#aeroway-poly[zoom>=14] {
  polygon-fill: @aeroway;
}
/******************************************************************* */


/* ================================================================== */
/* RAILWAY
/* ================================================================== */

#railway[type='disused'][zoom>=14][zoom<=20] {
  line-cap: butt;
  line-color: darken(@rail_line,20%);
  [zoom>=14] { line-width: 0.35; line-dasharray: 4,2;}
  [zoom>=15] { line-width: 0.55; line-dasharray: 4,2;}
  [zoom>=16] { line-width: 1; line-dasharray: 7,4; }
  [zoom>=18] { line-width: 1.75; line-dasharray: 10,6;}
}

#railway[type='yard'][zoom>=15][zoom<=20] {
  line-cap: butt;
  line-color: @rail_line;
  [zoom>=15] { line-width: 0.35; }
  [zoom>=16] { line-width: 1.5; }
  [zoom>=18] { line-width: 2.25; }
}

#railway[type='main'][zoom>=12][zoom<=20] {
  line-cap: butt;
  line-color: @rail_line;
  [zoom>=11] { line-width: 1; }
  [zoom>=14] { line-width: 1.25; }
  [zoom>=16] { line-width: 1.75; }
  [zoom>=18] { line-width: 2; }
  [zoom>=20] { line-width: 2.25; }
}

#railway[type='other'][zoom>=14][zoom<=20] {
  line-cap: butt;
  line-color: @rail_line;
  [zoom>=14] { line-width: 1; }
  [zoom>=16] { line-width: 1.5; }
  [zoom>=18] { line-width: 1.75; }
  [zoom>=20] { line-width: 2; }
}
