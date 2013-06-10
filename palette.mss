/* ****************************************************************** */
/* OSM BRIGHT for Imposm                                              */
/* ****************************************************************** */

/* For basic style customization you can simply edit the colors and
 * fonts defined in this file. For more detailed / advanced
 * adjustments explore the other files.
 *
 * GENERAL NOTES
 *
 * There is a slight performance cost in rendering line-caps.  An
 * effort has been made to restrict line-cap definitions to styles
 * where the results will be visible (lines at least 2 pixels thick).
 */

/* ================================================================== */
/* FONTS
/* ================================================================== */

/* directory to load fonts from in addition to the system directories */
Map { font-directory: url(./fonts); }

/* set up font sets for various weights and styles */
@sans_lt:           "Open Sans Regular","DejaVu Sans Book","unifont Medium";
@sans_lt_italic:    "Open Sans Italic","DejaVu Sans Italic","unifont Medium";
@sans:              "Open Sans Semibold","DejaVu Sans Book","unifont Medium";
@sans_italic:       "Open Sans Semibold Italic","DejaVu Sans Italic","unifont Medium";
@sans_bold:         "Open Sans Bold","DejaVu Sans Bold","unifont Medium";
@sans_bold_italic:  "Open Sans Bold Italic","DejaVu Sans Bold Italic","unifont Medium";

/* Some fonts are larger or smaller than others. Use this variable to
   globally increase or decrease the font sizes. */
/* Note this is only implemented for certain things so far */
@text_adjust: 0;

/* ================================================================== */
/* PALETTE
/* ================================================================== */

@primary1: #E8E0D8; // = rgb(232,224,216)
@primary2: #CBC5BF; // = rgb(203,197,191)
@primary3: #BFA286; // = rgb(191,162,134)
@primary4: #EEE7DF; // = rgb(238,231,223)
@primary5: #EEE7E1; // = rgb(238,231,225)

@secondaryA1: #E8E4D8; // = rgb(232,228,216)
@secondaryA2: #CBC8BF; // = rgb(203,200,191)
@secondaryA3: #BFB286; // = rgb(191,178,134)
@secondaryA4: #EEEBDF; // = rgb(238,235,223)
@secondaryA5: #EEEBE1; // = rgb(238,235,225)

@secondaryB1: #D7C8CB; // = rgb(215,200,203)
@secondaryB2: #BCB0B3; // = rgb(188,176,179)
@secondaryB3: #B17C87; // = rgb(177,124,135)
@secondaryB4: #E1D3D6; // = rgb(225,211,214)
@secondaryB5: #E1D5D7; // = rgb(225,213,215)

@triadA1: #94969D; // = rgb(148,150,157)
@triadA2: #82848A; // = rgb(130,132,138)
@triadA3: #5B6482; // = rgb(91,100,130)
@triadA4: #ACAEB6; // = rgb(172,174,182)
@triadA5: #ADAFB6; // = rgb(173,175,182)

@triadB1: #A1ADA5; // = rgb(161,173,165)
@triadB2: #8F9891; // = rgb(143,152,145)
@triadB3: #648F6F; // = rgb(100,143,111)
@triadB4: #B6C2B9; // = rgb(182,194,185)
@triadB5: #B7C2BA; // = rgb(183,194,186)

@tetradB1: #94969D; // = rgb(148,150,157)
@tetradB2: #82848A; // = rgb(130,132,138)
@tetradB3: #5B6482; // = rgb(91,100,130)
@tetradB4: #ACAEB6; // = rgb(172,174,182)
@tetradB5: #ADAFB6; // = rgb(173,175,182)

@complementary1: #868E90; // = rgb(134,142,144)
@complementary2: #767C7E; // = rgb(118,124,126)
@complementary3: #537076; // = rgb(83,112,118)
@complementary4: #A1AAAB; // = rgb(161,170,171)
@complementary5: #A3AAAB; // = rgb(163,170,171)


/* ================================================================== */
/* LANDUSE & LANDCOVER COLORS
/* ================================================================== */

@land:              #F7F6F1;
@water:             #90cccb; //#79c1c0
@grass:             #a8c48d;
@beach:             #ece1a3;
@park:              #DAF2C1;
@cemetery:          #D6DED2;
@wooded:            #C3D9AD;
@agriculture:       #95ae79;
@military:          @primary3;

@building:          #dcd7d7;
@building_hedge:    #dcd7d7;
@hospital:          rgb(229,198,195);
@school:            #a7c688;
@sports:            #b9d0a3;

@residential:       darken(@land,5%);
@commercial:        @land * 0.97;
@industrial:        @secondaryB1;
@parking:           #EEE;

/* ================================================================== */
/* ROAD COLORS
/* ================================================================== */

/* For each class of road there are three color variables:
 * - line: for lower zoomlevels when the road is represented by a
 *         single solid line.
 * - case: for higher zoomlevels, this color is for the road's
 *         casing (outline).
 * - fill: for higher zoomlevels, this color is for the road's
 *         inner fill (inline).
 */

/* ================================================================== */
/* ROAD SURFACES
/* ================================================================== */

@unpaved: @residential; //#e2d8c3; //#ede7da;
@paved: #d2938e;

@unpaved_case: darken(@unpaved,20%);

@motorway_line:     @paved;
@motorway_fill:     @paved;
@motorway_case:     darken(@land, 50%);

@primary_line:      @paved;
@primary_fill:      @paved;
@primary_case:      @paved * 0.9;

@secondary_line:    #e9cbb0;
@secondary_fill:    @secondary_line;
@secondary_case:    @secondary_fill * 0.9;

@tertiary_line:    #e6eaa1;
@tertiary_fill:    @tertiary_line;
@tertiary_case:    @tertiary_fill * 0.9;

@standard_line:     @paved;
@standard_fill:     #e4e1d1;
@standard_case:     @standard_fill * 0.9;

@urban_line:        @paved;
@urban_fill:        #f7f6f1;
@urban_case:        @urban_fill * 0.9;

@track_line:        @primary3;
@track_fill:        @primary1;
@track_case:        darken(@track_fill,5%);

@pedestrian_line:   @primary2;
@pedestrian_fill:   @primary3;
@pedestrian_case:   @land * 0.9;

@cycle_line:        @standard_line;
@cycle_fill:        #FAFAF5;
@cycle_case:        @land;

@rail_line:         #999;
@rail_fill:         #fff;
@rail_case:         @land;

@aeroway:           #ddd;

/* ================================================================== */
/* BOUNDARY COLORS
/* ================================================================== */

@admin_2:           @complementary3;
@admin_3:           #AEA6A5;
@admin_2_text:      @complementary3;
@admin_3_text:      #AEA6A5;

/* ================================================================== */
/* LABEL COLORS
/* ================================================================== */

/* We set up a default halo color for places so you can edit them all
   at once or override each individually. */
@place_halo:        fadeout(#fff,34%);

@country_text:      #435;
@country_halo:      @place_halo;

@state_text:        #546;
@state_halo:        @place_halo;

@city_text:         #222;
@city_halo:         @place_halo;

@town_text:         #444;
@town_halo:         @place_halo;

@poi_text:          @complementary3;
@poi_text2:         @complementary1;
@poi_halo:          @place_halo;

@road_text:         #777;
@road_halo:         #fff;

@other_text:        #888;
@other_halo:        @place_halo;

@locality_text:     #aaa;
@locality_halo:     @land;

/* Also used for other small places: hamlets, suburbs, localities */
@village_text:      #888;
@village_halo:      @place_halo;

/* ****************************************************************** */



