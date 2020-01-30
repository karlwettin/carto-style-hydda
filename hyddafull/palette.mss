/* ****************************************************************** */
/* Based on OSM BRIGHT for Imposm                                     */
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

/*

Set up font sets for various weights and styles. Pretty much copied from OSM carto style.

sudo apt-get install fonts-noto-cjk fonts-noto-hinted fonts-noto-unhinted ttf-unifont

*/

/* Regular style */
@sans:          "Noto Sans Regular",
                "Noto Sans CJK JP Regular",
                "Noto Sans Adlam Regular",
                "Noto Sans Adlam Unjoined Regular",
                "Noto Sans Armenian Regular",
                "Noto Sans Balinese Regular",
                "Noto Sans Bamum Regular",
                "Noto Sans Batak Regular",
                "Noto Sans Bengali UI Regular",
                "Noto Sans Buginese Regular",
                "Noto Sans Buhid Regular",
                "Noto Sans Canadian Aboriginal Regular",
                "Noto Sans Chakma Regular",
                "Noto Sans Cham Regular",
                "Noto Sans Cherokee Regular",
                "Noto Sans Coptic Regular",
                "Noto Sans Devanagari UI Regular",
                "Noto Sans Ethiopic Regular",
                "Noto Sans Georgian Regular",
                "Noto Sans Gujarati UI Regular",
                "Noto Sans Gurmukhi UI Regular",
                "Noto Sans Hanunoo Regular",
                "Noto Sans Hebrew Regular",
                "Noto Sans Javanese Regular",
                "Noto Sans Kannada UI Regular",
                "Noto Sans Kayah Li Regular",
                "Noto Sans Khmer UI Regular",
                "Noto Sans Lao UI Regular",
                "Noto Sans Lepcha Regular",
                "Noto Sans Limbu Regular",
                "Noto Sans Lisu Regular",
                "Noto Sans Malayalam UI Regular",
                "Noto Sans Mandaic Regular",
                "Noto Sans Mongolian Regular",
                "Noto Sans Myanmar UI Regular",
                "Noto Sans New Tai Lue Regular",
                "Noto Sans NKo Regular",
                "Noto Sans Ol Chiki Regular",
                "Noto Sans Oriya UI Regular",
                "Noto Sans Osage Regular",
                "Noto Sans Osmanya Regular",
                "Noto Sans Samaritan Regular",
                "Noto Sans Saurashtra Regular",
                "Noto Sans Shavian Regular",
                "Noto Sans Sinhala UI Regular", "Noto Sans Sinhala Regular",
                "Noto Sans Sundanese Regular",
                "Noto Sans Symbols Regular",
                "Noto Sans Symbols2 Regular",
                "Noto Sans Syriac Eastern Regular",
                "Noto Sans Tagalog Regular",
                "Noto Sans Tagbanwa Regular",
                "Noto Sans Tai Le Regular",
                "Noto Sans Tai Tham Regular",
                "Noto Sans Tai Viet Regular",
                "Noto Sans Tamil UI Regular",
                "Noto Sans Telugu UI Regular",
                "Noto Sans Thaana Regular",
                "Noto Sans Thai UI Regular",
                "Noto Sans Tifinagh Regular",
                "Noto Sans Vai Regular",
                "Noto Sans Yi Regular",

                "Noto Sans Arabic UI Regular", "Noto Naskh Arabic UI Regular",

                "Noto Serif Tibetan Regular", "Noto Sans Tibetan Regular",

                "Noto Emoji Regular",

                "DejaVu Sans Book",

                "HanaMinA Regular", "HanaMinB Regular",
                "Unifont Medium", "unifont Medium", "Unifont Upper Medium";

/* Light style, currently same as regular */
@sans_lt:       @sans;

/*
A bold style is available for almost all scripts. Bold text is heavier than
regular text and can be used for emphasis. Fallback is a regular style.
*/
@sans_bold:     "Noto Sans Bold",
                "Noto Sans CJK JP Bold",
                "Noto Sans Armenian Bold",
                "Noto Sans Bengali UI Bold",
                "Noto Sans Cham Bold",
                "Noto Sans Cherokee Bold",
                "Noto Sans Devanagari UI Bold",
                "Noto Sans Ethiopic Bold",
                "Noto Sans Georgian Bold",
                "Noto Sans Gujarati UI Bold",
                "Noto Sans Gurmukhi UI Bold",
                "Noto Sans Hebrew Bold",
                "Noto Sans Kannada UI Bold",
                "Noto Sans Khmer UI Bold",
                "Noto Sans Lao UI Bold",
                "Noto Sans Malayalam UI Bold",
                "Noto Sans Myanmar UI Bold",
                "Noto Sans Oriya UI Bold",
                "Noto Sans Sinhala UI Bold", "Noto Sans Sinhala Bold",
                "Noto Sans Symbols Bold",
                "Noto Sans Tamil UI Bold",
                "Noto Sans Telugu UI Bold",
                "Noto Sans Thaana Bold",
                "Noto Sans Thai UI Bold",

                "Noto Sans Arabic UI Bold", "Noto Naskh Arabic UI Bold",

                "Noto Serif Tibetan Bold", "Noto Sans Tibetan Bold",

                "DejaVu Sans Bold",

                @sans;

/*
Italics are only available for the base font, not the other scripts.
For a considerable number of labels this style will make no difference to the regular style.
*/
@sans_italic:   "Noto Sans Italic", @sans;

/*
Italics are only available for the base font, not the other scripts.
For a considerable number of labels this style will make no difference to the bold style.
*/
@sans_bold_italic:   "Noto Sans Bold Italic", @sans_bold;


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
@scrub:             @wooded * 1.1;
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

@golf_practice:     @grass * 0.98;
@golf_green:        @grass * 0.97;
@golf_tee:          @grass * 0.96;
@golf_fairway:      @grass * 0.95;
@golf_rough:        @grass * 0.93;
@golf_bunker:       @FFEEC7; 


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

@no_auto_line:      #c0ccc4;

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

@island_text:       #222;
@island_halo:       @place_halo;


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


