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
@r11_motorway: 2;  @r11_main: 2;  @r11_inter: 1;  @r11_minor: 0.5; @r11_urban: 0.5; @r11_narrow: 0;   @r11_noauto: 0;
@r12_motorway: 3;  @r12_main: 2;  @r12_inter: 1;  @r12_minor: 0.8; @r12_urban: 0.8; @r12_narrow: 0;   @r12_noauto: 0;
@r13_motorway: 4;  @r13_main: 3;  @r13_inter: 3;  @r13_minor: 2;   @r13_urban: 1.5; @r13_narrow: 1.5; @r13_noauto: 1;
@r14_motorway: 5;  @r14_main: 4;  @r14_inter: 3;  @r14_minor: 2;   @r14_urban: 2;   @r14_narrow: 2;   @r14_noauto: 1;
@r15_motorway: 6;  @r15_main: 4;  @r15_inter: 4;  @r15_minor: 2.1; @r15_urban: 2.1; @r15_narrow: 2.5; @r15_noauto: 2;
@r16_motorway: 8;  @r16_main: 6;  @r16_inter: 5;  @r16_minor: 4;   @r16_urban: 4;   @r16_narrow: 3;   @r16_noauto: 2;
@r17_motorway: 12; @r17_main: 10; @r17_inter: 6;  @r17_minor: 6;   @r17_urban: 6;   @r17_narrow: 4;   @r17_noauto: 3;
@r18_motorway: 20; @r18_main: 16; @r18_inter: 10; @r18_minor: 10;  @r18_urban: 10;  @r18_narrow: 8;   @r18_noauto: 3;

/* ---- Casing ----------------------------------------------- */

#roads_high::outline[zoom>=11][zoom<=20] {
  /* -- colors & styles -- */
  line-cap: round;
  line-join: round;
  [bridge=1],
  [tunnel=1] {
    line-cap: butt;
  }
  [bridge=1] { line-color: @standard_case * 0.8; }
  [style='motorway'] {
    line-color: @motorway_case;
    [bridge=1] { line-color: @motorway_case * 0.8; }
  }
  [style='primary'] {
    line-color: @primary_case;
    [bridge=1] { line-color: @primary_case * 0.8; }
  }
  [style='secondary'] {
    line-color: @secondary_case;
    [bridge=1] { line-color: @secondary_case * 0.8; }
  }
  [style='tertiary'] {
    line-color: @tertiary_case;
    [bridge=1] { line-color: @tertiary_case * 0.8; }
  }
  [style='standard'] {
    line-color: @standard_case;
  }
  [style="urban"] {
    line-color: @urban_case;
  }
  [surface='unpaved'] {
    line-color: @unpaved_case;
  }
  [style="track"] {
    line-color: @track_case;
  }
  [style='noauto'] {
    line-color: @pedestrian_case;
  }
  [tunnel=1] { line-dasharray: 3,3; }

  /* -- widths -- */
  [zoom=11] {
    [width='motorway'] { line-width: @r11_motorway + 2; }
    [width='main'] { line-width: @r11_main + 2; }
    [width='inter'] { line-width: 0; }
    [width='minor']{ line-width: 0; }
    [width='urban']{ line-width: 0; }
    [width='narrow']{ line-width: 0; }
    [width='noauto']   { line-width: 0; }
  }
  [zoom=12] {
    [width='motorway'] { line-width: @r12_motorway + 2; }
    [width='main'] { line-width: @r12_main + 2; }
    [width='inter'] { line-width: @r12_inter + 1; }
    [width='minor']{ line-width: 0; }
    [width='urban']{ line-width: 0; }
    [width='narrow']{ line-width: 0; }
    [width='noauto']   { line-width: 0; }
  }
  [zoom=13] {
    [width='motorway'] { line-width: @r13_motorway + 2; }
    [width='main'] { line-width: @r13_main + 2; }
    [width='inter'] { line-width: @r13_inter + 1; }
    [width='minor']{ line-width: @r13_minor + 1; }
    [width='urban']{ line-width: 0; }
    [width='narrow']{ line-width: @r13_narrow + 0.2; }
    [width='noauto'] { line-width: 0; }
  }
  [zoom=14] {
    [width='motorway'] { line-width: @r14_motorway + 2; }
    [width='main'] { line-width: @r14_main + 2; }
    [width='inter'] { line-width: @r14_inter + 1; }
    [width='minor']{ line-width: @r14_minor + 1; }
    [width='urban']{
      line-width: @r14_urban + 1;
      [surface='unpaved']{ line-width: 0;}
    }
    [width='narrow']{ line-width: @r14_narrow + 0.2; }
    [width='noauto']   { line-width: @r14_noauto + 1; }
  }
  [zoom=15] {
    [width='motorway'] { line-width: @r15_motorway + 2.5; }
    [width='main'] { line-width: @r15_main + 2; }
    [width='inter'] { line-width: @r15_inter + 2; }
    [width='minor']{ line-width: @r15_minor + 2; }
    [width='urban']{ line-width: @r15_urban + 1; }
    [width='narrow']{ line-width: @r15_narrow + 0.2; }
    [width='noauto']   { line-width: @r15_noauto + 2; }
  }
  [zoom=16] {
    [width='motorway'] { line-width: @r16_motorway + 2.5; }
    [width='main'] { line-width: @r16_main + 2.5; }
    [width='inter'] { line-width: @r16_inter + 2.5; }
    [width='minor']{ line-width: @r16_minor + 2; }
    [width='urban']{ line-width: @r16_urban + 2; }
    [width='narrow']{ line-width: @r16_narrow + 1; }
    [width='noauto']   { line-width: @r16_noauto + 2; }
  }
  [zoom>=17] {
    [width='motorway'] { line-width: @r17_motorway + 3; }
    [width='main'] { line-width: @r17_main + 2.5; }
    [width='inter'] { line-width: @r17_inter + 2.5; }
    [width='minor']{ line-width: @r17_minor + 2; }
    [width='urban']{ line-width: @r17_urban + 2; }
    [width='narrow']{ line-width: @r17_narrow + 1; }
    [width='noauto']   { line-width: @r17_noauto + 3; }
  }
  [zoom>=18] {
    [width='motorway'] { line-width: @r18_motorway + 4; }
    [width='main'] { line-width: @r18_main + 4; }
    [width='inter'] { line-width: @r18_inter + 3.5; }
    [width='minor']{ line-width: @r18_minor + 3.5; }
    [width='urban']{ line-width: @r18_urban + 3.5; }
    [width='narrow']{ line-width: @r18_narrow + 2; }
    [width='noauto']   { line-width: @r18_noauto + 4; }
  }
}


#roads_high[zoom>=11][zoom<=20] {
  /* -- colors & styles -- */
  line-cap: butt;
  line-join: round;
  [style='motorway'] {
    line-color: @motorway_fill;
    [tunnel=1] { line-color: lighten(@motorway_fill, 10%); }
  }
  [style='primary'] {
    line-color: @primary_fill;
    [tunnel=1] { line-color: lighten(@primary_fill, 10%); }
  }
  [style='secondary'] {
    line-color: @secondary_fill;
    [tunnel=1] { line-color: lighten(@secondary_fill, 10%); }
  }
  [style='tertiary'] {
    line-color: @tertiary_fill;
    [tunnel=1] { line-color: lighten(@secondary_fill, 10%); }
  }
  [style='standard'] {
    line-color: @standard_fill;
  }
  [style="urban"] {
    line-color: @urban_fill;
    [zoom=13][surface='unpaved'],
    [zoom=14][surface='unpaved'] {
      line-color: @unpaved_case;
    }
  }
  [style="track"] {
    line-color: @track_fill;
    line-dasharray: 4,2;
    [zoom>=16] {line-dasharray: 8,2;}
  }
  [surface='unpaved'] {
    line-color: @unpaved;
  }
  [style='noauto'] {
    line-color: @pedestrian_fill;
    line-cap: round;
    line-dasharray: 0.1,2;
  }
  [condition='bad'] {
    line-dasharray: 5,0.5;
    // line-comp-op: hue;
  }
  /* -- widths -- */
  [zoom=11] {
    [width='motorway'] { line-width: @r11_motorway; }
    [width='main'] { line-width: @r11_main; }
    [width='inter'] { line-width: @r11_inter; }
    [width='minor']{ line-width: @r11_minor; }
    [width='urban']{ line-width: @r11_urban; }
    [width='narrow']{ line-width: @r11_narrow; }
    [width='noauto']   { line-width: 0; }
  }
  [zoom=12] {
    [width='motorway'] { line-width: @r12_motorway; }
    [width='main'] { line-width: @r12_main; }
    [width='inter'] { line-width: @r12_inter; }
    [width='minor']{ line-width: @r12_minor; }
    [width='urban']{ line-width: @r12_urban; }
    [width='narrow']{ line-width: @r12_narrow; }
    [width='noauto']   { line-width: @r12_noauto; }
  }
  [zoom=13] {
    [width='motorway'] { line-width: @r13_motorway; }
    [width='main'] { line-width: @r13_main; }
    [width='inter'] { line-width: @r13_inter; }
    [width='minor']{ line-width: @r13_minor; }
    [width='urban']{
      line-width: @r13_urban;
      [surface='unpaved'] {line-width: 0.5;}
    }
    [width='narrow']{line-width: @r13_narrow; }
    [width='noauto']   { line-width: @r13_noauto; }
  }
  [zoom=14] {
    [width='motorway'] { line-width: @r14_motorway; }
    [width='main'] { line-width: @r14_main; }
    [width='inter'] { line-width: @r14_inter; }
    [width='minor']{ line-width: @r14_minor; }
    [width='urban']{
      line-width: @r14_urban;
      [surface='unpaved'] { line-width: 0.8; }
    }
    [width='narrow']{ line-width: @r14_narrow; }
    [width='noauto']   { line-width: @r14_noauto; line-dasharray: 0.1,4; }
  }
  [zoom=15] {
    [width='motorway'] { line-width: @r15_motorway; }
    [width='main'] { line-width: @r15_main; }
    [width='inter'] { line-width: @r15_inter; }
    [width='minor']{ line-width: @r15_minor; }
    [width='urban']{ line-width: @r15_urban; }
    [width='narrow']{ line-width: @r15_narrow; }
    [width='noauto']   { line-width: @r15_noauto; line-dasharray: 0.1,4; }
  }
  [zoom=16] {
    [width='motorway'] { line-width: @r16_motorway; }
    [width='main'] { line-width: @r16_main; }
    [width='inter'] { line-width: @r16_inter; }
    [width='minor']{ line-width: @r16_urban; }
    [width='urban']{ line-width: @r16_urban; }
    [width='narrow']{ line-width: @r16_narrow; }
    [width='noauto']   { line-width: @r16_noauto; line-dasharray: 0.1,4; }
  }
  [zoom=17] {
    [width='motorway'] { line-width: @r17_motorway; }
    [width='main'] { line-width: @r17_main; }
    [width='inter'] { line-width: @r17_inter; }
    [width='minor']{ line-width: @r17_minor; }
    [width='urban']{ line-width: @r17_urban; }
    [width='narrow']{ line-width: @r17_narrow; }
    [width='noauto']   { line-width: @r17_noauto; line-dasharray: 0.1,6; }
  }
  [zoom>=18] {
    [width='motorway'] { line-width: @r18_motorway; }
    [width='main'] { line-width: @r18_main; }
    [width='inter'] { line-width: @r18_inter; }
    [width='minor']{ line-width: @r18_minor; }
    [width='urban']{ line-width: @r18_urban; }
    [width='narrow']{ line-width: @r18_narrow; }
    [width='noauto']   { line-width: @r18_noauto; line-dasharray: 0.1,6; }
  }
}

/* ---- Turning Circles --------------------------------------------- */
#turning_circle_case[zoom>=14] {
  marker-fill:@standard_fill;
  marker-line-color:@standard_case;
  marker-line-width:2;
  marker-allow-overlap:true;
}
#turning_circle_fill[zoom>=14] {
  marker-fill:@standard_fill;
  marker-line-width:0;
  marker-line-opacity:0;
  marker-allow-overlap:true;
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
/* AEROWAYS
/* ================================================================== */

#aeroway[zoom>=10] {
  line-color:@aeroway;
  line-cap:butt;
  line-join:miter;
  [type='runway'] {
    [zoom=10]{ line-width:1; }
    [zoom=11]{ line-width:2; }
    [zoom=12]{ line-width:3; }
    [zoom=13]{ line-width:5; }
    [zoom=14]{ line-width:7; }
    [zoom=15]{ line-width:11; }
    [zoom=16]{ line-width:15; }
    [zoom=17]{ line-width:19; }
    [zoom>17]{ line-width:23; }
  }
  [type='taxiway'] {
    [zoom=10]{ line-width:0.2; }
    [zoom=11]{ line-width:0.2; }
    [zoom=12]{ line-width:0.2; }
    [zoom=13]{ line-width:1; }
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
#aeroway-poly[zoom>=10] {
  polygon-fill: @aeroway;
}
/******************************************************************* */


/* ================================================================== */
/* RAILWAY
/* ================================================================== */


#railway[zoom>=11][zoom<=20] {
  ::outline {
    line-cap: round;
    line-join: round;
    [bridge=1],
    [tunnel=1] {
      line-cap: butt;
    }
    line-color: fadeout(@land,50%);
    [bridge=1] { line-color: @secondary_case * 0.8; }
    [tunnel=1] { line-dasharray: 3,3; }

    /* -- widths -- */
    [zoom>=11][zoom<15] { line-width: 0; }
    [zoom=15] { line-width: 1.5 + 2; }
    [zoom=16] { line-width: 2 + 2; }
    [zoom>=17] { line-width: 3 + 4; }
    [zoom>=18] { line-width: 4 + 6; }
  }

  line-color: @rail_line;
  line-dasharray: 1,1;
  [railway='subway'] { line-opacity: 0.67; }
  [zoom>15] { line-dasharray: 1,2; } 
  [tunnel=1] {
    line-cap: butt;
  }
  /* -- widths -- */
  [zoom=11] { line-width: 0.2; }
  [zoom=12] { line-width: 0.4; }
  [zoom=13] {line-width: 0.8; }
  [zoom=14] { line-width: 1; }
  [zoom=15] { line-width: 1.5; }
  [zoom=16] { line-width: 2; }
  [zoom=17] {line-width: 3; }
  [zoom>=18] { line-width: 4; }
}