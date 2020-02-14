carto-style-hydda
====================

Hydda, a carto style project used by OpenStreetMap Sweden.
https://openstreetmap.se/#4/63.94/18.68

### About

Originally based on an old version of [OSMBright](https://github.com/mapbox/osm-bright) but patched to add more features such as piers, stadiums, pitches, and more. Nowadays also contains cherry picked details from [OpenStreetMap-Carto](https://github.com/gravitystorm/openstreetmap-carto).  

### Screenshots

![There are no administrative borders](https://raw.githubusercontent.com/karlwettin/carto-style-hydda/master/docs/screenshots/countries.png)
There are no administrative borders. Country names are visible at low zoom levels, and city names might look somewhat disorganized.

The style is split in three layers: the base-layer, the transparent roads and labels-layer and the composite full-layer which contains both the base, roads and labels.

![Fully styled map of the Øresund region](https://raw.githubusercontent.com/karlwettin/carto-style-hydda/master/docs/screenshots/full_oresund.png)
Hydda full-layer overlooking the Øresund region between Denmark and southern Sweden.

![Base map of the Øresund region](https://raw.githubusercontent.com/karlwettin/carto-style-hydda/master/docs/screenshots/base_oresund.png)
Hydda base-layer overlooking the Øresund region between Denmark and southern Sweden.

![Roads and labels map of the Øresund region](https://raw.githubusercontent.com/karlwettin/carto-style-hydda/master/docs/screenshots/roads_and_labels_oresund.png)
Hydda roads and labels-layer overlooking the Øresund region between Denmark and southern Sweden.
 
![Multi layered real estate for sale in Stockholm](https://raw.githubusercontent.com/karlwettin/carto-style-hydda/master/docs/screenshots/real_estate_stockholm.png)
The idea with the three layers is to allow for adding visual information in between of the base and roads/labels. This is an image with a heat map of real estate prices in and around Stockholm. The colors of the Hydda style has been selected specifically to work well with green-yellow-red overlays.

![At lower zoom levels there are no streets](https://raw.githubusercontent.com/karlwettin/carto-style-hydda/master/docs/screenshots/no_streets.png)
At low zoom levels minor streets are not rendered. In populated areas streets are however implicit as areas in between building blocks. 

![Streets are visible at greater zoom levels](https://raw.githubusercontent.com/karlwettin/carto-style-hydda/master/docs/screenshots/streets.png)
Minor streets become visible first at a greater zoom level.

The Hydda style differs from OSM Bright and OSM-carto, which Hydda is based on, in the way that it has improvements related to geographic features of Sweden. This might be a problem in other areas of the world.
 
![Archipelagos of Fjällbacka using Hydda](https://raw.githubusercontent.com/karlwettin/carto-style-hydda/master/docs/screenshots/archipelagos_hydda.png)
Archipelagos of Fjällbacka using Hydda.

![Archipelagos of Fjällbacka using OSM-carto](https://raw.githubusercontent.com/karlwettin/carto-style-hydda/master/docs/screenshots/archipelagos_osm.png)
Archipelagos of Fjällbacka using OSM-carto.

### Building and installation

Hydda is using the Google Noto fonts.
``sudo apt-get install fonts-noto-cjk fonts-noto-hinted fonts-noto-unhinted ttf-unifont``
Don't be scared by the warnings when starting renderd, the fonts are named differently in multiple Linux distributions
and are therefor included using multiple names to work on all systems. They are not missing if you installed the above packages.

TODO 
* Java build
* Coastlines/landmasses
* osm2pgql using osm-carto fields and lua. 
* PostGIS indices

