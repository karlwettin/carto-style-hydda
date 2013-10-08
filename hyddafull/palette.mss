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
@sans:              "Open Sans Semibold","DejaVu Sans Book","unifont Medium";
@sans_bold:         "Open Sans Bold","DejaVu Sans Bold","unifont Medium";
@sans_italic:       "Open Sans Semibold Italic","DejaVu Sans Italic","unifont Medium";
@sans_bold_italic:  "Open Sans Bold Italic","DejaVu Sans Bold Italic","unifont Medium";

/* Some fonts are larger or smaller than others. Use this variable to
   globally increase or decrease the font sizes. */
/* Note this is only implemented for certain things so far */
@text_adjust: 0;

/* ================================================================== */
/* LANDUSE & LANDCOVER COLORS
/* ================================================================== */

@land:              #e0e0e0;
@water:             #3ebcef;
@grass:             #E6F2C1;
@beach:             #FFEEC7;
@park:              #c2debd;
@cemetery:          #D6DED2;
@wooded:            #C3D9AD;
@agriculture:       #F2E8B6;

@building:          #cfcfcf;
@hospital:          #e0e0e0;
@school:            #e0e0e0;

@sports:            #e0e0e0;
@stadium:           @land * 0.97;
@pitch:             @park * 0.97;
@track:             @park * 0.96;

@residential:       @land * 0.98;
@commercial:        @land * 0.97;
@industrial:        @land * 0.96;
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

@motorway_line:     #f6f6f6;
@motorway_fill:     #c0ccc4;
@motorway_case:     #f6f6f6;

@trunk_line:        #f6f6f6;
@trunk_fill:        #c0ccc4;
@trunk_case:        #f6f6f6;

@primary_line:      #c0ccc4;
@primary_fill:      #f6f6f6;
@primary_case:      #c0ccc4;

@secondary_line:    #c0ccc4;
@secondary_fill:    #f6f6f6;
@secondary_case:    #c0ccc4;

@standard_line:     #f6f6f6;
@standard_fill:     #f6f6f6;
@standard_case:     #f6f6f6;

@pedestrian_line:   @standard_line;
@pedestrian_fill:   #f6f6f6;
@pedestrian_case:   @land;

@cycle_line:        @standard_line;
@cycle_fill:        #ff0002;
@cycle_case:        @land;

@rail_line:         #999;
@rail_fill:         #fff;
@rail_case:         @land;

@aeroway:           #ddd;

/* ================================================================== */
/* BOUNDARY COLORS
/* ================================================================== */

@admin_2:           #324;

/* ================================================================== */
/* LABEL COLORS
/* ================================================================== */

/* We set up a default halo color for places so you can edit them all
   at once or override each individually. */
@place_halo:        fadeout(#fff,34%);

@country_text:      #222;
@country_halo:      @place_halo;

@state_text:        #222;
@state_halo:        @place_halo;

@city_text:         #222;
@city_halo:         @place_halo;

@town_text:         #222;
@town_halo:         @place_halo;

@island_text:         #222;
@island_halo:         @place_halo;


@poi_text:          #888;

@road_text:         #222;
@road_halo:         #fff;

@other_text:        #888;
@other_halo:        @place_halo;

@locality_text:     #aaa;
@locality_halo:     @land;

/* Also used for other small places: hamlets, suburbs, localities */
@village_text:      #555;
@village_halo:      @place_halo;

/* ****************************************************************** */


