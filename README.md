carto-style-hydda
====================

Hydda, a carto stylesheet project used by OpenStreetMap Sweden.
https://openstreetmap.se/#4/63.94/18.68

### About

Originally based on an old version of [OSMBright](https://github.com/mapbox/osm-bright) but patched to add more features such as piers, stadiums, pitches, and more. Nowadays also contains cherry picked details from [OpenStreetMap-Carto](https://github.com/gravitystorm/openstreetmap-carto).  

### Attribution

Please use add a reference to this page when using this style:

```
var Hydda_Full = L.tileLayer('https://{s}.tile.openstreetmap.se/hydda/full/{z}/{x}/{y}.png', {
    maxZoom: 20,
    attribution: '<a href="https://github.com/karlwettin/carto-style-hydda" target="_blank">Hydda</a> &mdash; Map data &copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
});
```

### Screenshots
(Sorry, GitHub scales these screenshots due to width. I'll have to create new images that are 900px wide.)


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
The idea with the three layers is to allow for adding visual information in between of the base and roads/labels. I.e. it makes roads and labels clearly visible rather than hidden underneath a semi transparent overlay. This is an image with a heat map of real estate prices in and around Stockholm. The colors of the Hydda style has been selected specifically to work well with green-yellow-red overlays.

![At lower zoom levels there are no streets](https://raw.githubusercontent.com/karlwettin/carto-style-hydda/master/docs/screenshots/no_streets.png)
At low zoom levels minor streets are not rendered. In populated areas streets are however implicit between building blocks. 

![Streets are visible at greater zoom levels](https://raw.githubusercontent.com/karlwettin/carto-style-hydda/master/docs/screenshots/streets.png)
Minor streets become visible first at a greater zoom level.

The Hydda style differs from OSM Bright and OSM-carto, which Hydda is based on, in the way that it has improvements related to geographic features of Sweden. This might be a problem in other areas of the world.
 
![Archipelagos of Fjällbacka using Hydda](https://raw.githubusercontent.com/karlwettin/carto-style-hydda/master/docs/screenshots/archipelagos_hydda.png)
Archipelagos of Fjällbacka using Hydda.

![Archipelagos of Fjällbacka using OSM-carto](https://raw.githubusercontent.com/karlwettin/carto-style-hydda/master/docs/screenshots/archipelagos_osm.png)
Archipelagos of Fjällbacka using OSM-carto.

### Building and installing
OpenStreetMap Sweden is as of february 2020 rendering Hydda styles on an Ubuntu 18.04 LTS from source as described by [switch2osm](https://switch2osm.org/serving-tiles/manually-building-a-tile-server-18-04-lts/).

The local user ``renderaccunt`` owns mod_tile and the PostgreSQL database ``gis``. 
All Hydda related data is stored in ``~renderaccount/hydda/`` and this is a hardcoded path in the style. You might want to change this to fit your needs.

```
cd ~renderuser/src
git clone https://github.com/karlwettin/carto-style-hydda.git
```

#### osm2pgsql
Hydda doesn't contain an own transform script and style for osm2pgsql, but you can use the one provided by [OpenStreetMap-Carto](https://github.com/gravitystorm/openstreetmap-carto).

``osm2pgsql -d gis --create --slim  -G --hstore --tag-transform-script ~/src/openstreetmap-carto/openstreetmap-carto.lua -C 2500 --number-processes 1 -S ~/src/openstreetmap-carto/openstreetmap-carto.style ~/data/sweden-latest.osm.pbf``

#### Fonts
Hydda is primarily using the Google Noto fonts.

``sudo apt install fonts-noto-cjk fonts-noto-hinted fonts-noto-unhinted ttf-unifont``

Don't be scared by the warnings when starting renderd, the fonts are named differently in multiple Linux distributions
and are therefore included using multiple names to work on all systems. They are not missing if you installed the above packages.

```
Mapnik LOG> 2020-02-14 23:57:42: warning: unable to find face-name 'Noto Sans CJK JP Regular' in FontSet 'fontset-0'
Mapnik LOG> 2020-02-14 23:57:42: warning: unable to find face-name 'Noto Serif Tibetan Regular' in FontSet 'fontset-0'
Mapnik LOG> 2020-02-14 23:57:42: warning: unable to find face-name 'Noto Emoji Regular' in FontSet 'fontset-0'
Mapnik LOG> 2020-02-14 23:57:42: warning: unable to find face-name 'HanaMinA Regular' in FontSet 'fontset-0'
Mapnik LOG> 2020-02-14 23:57:42: warning: unable to find face-name 'HanaMinB Regular' in FontSet 'fontset-0'
Mapnik LOG> 2020-02-14 23:57:42: warning: unable to find face-name 'unifont Medium' in FontSet 'fontset-0'
Mapnik LOG> 2020-02-14 23:57:42: warning: unable to find face-name 'Noto Sans CJK JP Bold' in FontSet 'fontset-1'
Mapnik LOG> 2020-02-14 23:57:42: warning: unable to find face-name 'Noto Serif Tibetan Bold' in FontSet 'fontset-1'
Mapnik LOG> 2020-02-14 23:57:42: warning: unable to find face-name 'Noto Sans CJK JP Regular' in FontSet 'fontset-1'
Mapnik LOG> 2020-02-14 23:57:42: warning: unable to find face-name 'Noto Serif Tibetan Regular' in FontSet 'fontset-1'
Mapnik LOG> 2020-02-14 23:57:42: warning: unable to find face-name 'Noto Emoji Regular' in FontSet 'fontset-1'
Mapnik LOG> 2020-02-14 23:57:42: warning: unable to find face-name 'HanaMinA Regular' in FontSet 'fontset-1'
Mapnik LOG> 2020-02-14 23:57:42: warning: unable to find face-name 'HanaMinB Regular' in FontSet 'fontset-1'
Mapnik LOG> 2020-02-14 23:57:42: warning: unable to find face-name 'unifont Medium' in FontSet 'fontset-1'
Mapnik LOG> 2020-02-14 23:57:42: warning: unable to find face-name 'Noto Sans CJK JP Bold' in FontSet 'fontset-2'
Mapnik LOG> 2020-02-14 23:57:42: warning: unable to find face-name 'Noto Serif Tibetan Bold' in FontSet 'fontset-2'
Mapnik LOG> 2020-02-14 23:57:42: warning: unable to find face-name 'Noto Sans CJK JP Regular' in FontSet 'fontset-2'
Mapnik LOG> 2020-02-14 23:57:42: warning: unable to find face-name 'Noto Serif Tibetan Regular' in FontSet 'fontset-2'
Mapnik LOG> 2020-02-14 23:57:42: warning: unable to find face-name 'Noto Emoji Regular' in FontSet 'fontset-2'
Mapnik LOG> 2020-02-14 23:57:42: warning: unable to find face-name 'HanaMinA Regular' in FontSet 'fontset-2'
Mapnik LOG> 2020-02-14 23:57:42: warning: unable to find face-name 'HanaMinB Regular' in FontSet 'fontset-2'
Mapnik LOG> 2020-02-14 23:57:42: warning: unable to find face-name 'unifont Medium' in FontSet 'fontset-2'
Mapnik LOG> 2020-02-14 23:57:42: warning: unable to find face-name 'Noto Sans CJK JP Regular' in FontSet 'fontset-3'
Mapnik LOG> 2020-02-14 23:57:42: warning: unable to find face-name 'Noto Serif Tibetan Regular' in FontSet 'fontset-3'
Mapnik LOG> 2020-02-14 23:57:42: warning: unable to find face-name 'Noto Emoji Regular' in FontSet 'fontset-3'
Mapnik LOG> 2020-02-14 23:57:42: warning: unable to find face-name 'HanaMinA Regular' in FontSet 'fontset-3'
Mapnik LOG> 2020-02-14 23:57:42: warning: unable to find face-name 'HanaMinB Regular' in FontSet 'fontset-3'
Mapnik LOG> 2020-02-14 23:57:42: warning: unable to find face-name 'unifont Medium' in FontSet 'fontset-3'
```


#### Land polygons
Hydda use land polygons as background, i.e. the inverse of coastlines. They are available to download from [OpenStreetMap Germany data archive](https://osmdata.openstreetmap.de/data/land-polygons.html):

* [Large, non split simplified (WGS84) zip](https://osmdata.openstreetmap.de/download/simplified-land-polygons-complete-3857.zip)
* [Complete, split (WGS84) zip](https://osmdata.openstreetmap.de/download/land-polygons-split-3857.zip)

As user ``renderaccount``, download the two zip-files and extract them to ``~renderaccount/hydda/data/simplified-land-polygons-complete-3857/`` and ``~renderaccount/hydda/data/land-polygons-split-3857`` respectively. 

You should now have a file structure that looks as following:

```
renderaccount@tile-server:/home/renderaccount/hydda/data$ find ./
./
./simplified-land-polygons-complete-3857
./simplified-land-polygons-complete-3857/simplified_land_polygons.shp
./simplified-land-polygons-complete-3857/simplified_land_polygons.cpg
./simplified-land-polygons-complete-3857/simplified_land_polygons.dbf
./simplified-land-polygons-complete-3857/README.txt
./simplified-land-polygons-complete-3857/simplified_land_polygons.index
./simplified-land-polygons-complete-3857/simplified_land_polygons.prj
./simplified-land-polygons-complete-3857/simplified_land_polygons.shx
./land-polygons-split-3857
./land-polygons-split-3857/land_polygons.shx
./land-polygons-split-3857/land_polygons.dbf
./land-polygons-split-3857/land_polygons.shp
./land-polygons-split-3857/README.txt
./land-polygons-split-3857/land_polygons.prj
./land-polygons-split-3857/land_polygons.cpg
./land-polygons-split-3857/land_polygons.index
```

#### PostGIS indices
It is recommended to create the database indices listed in [create_indices.sql](https://raw.githubusercontent.com/karlwettin/carto-style-hydda/master/create_indices.sql).

``psql -d gis -f create_indices.sql``

On a planet database this might take many hours.

#### Java build
If executing carto on project.mml you'll get Hydda the full style. You can also go to ``build`` and execute ``build.sh`` (given you have a JDK and Maven installed) which will produce all three styles in that directory. Copy them to ``~renderaccount/hydda 

``sudo apt install openjdk-11-jdk maven``

```
cd ~renderaccount/src/hydda/build/
./build.sh
```


#### renderd.conf
Our renderd.conf looks as following:

```
[renderd]
num_threads=16
tile_dir=/var/lib/mod_tile
stats_file=/var/run/renderd/renderd.stats

[mapnik]
plugins_dir=/usr/lib/mapnik/3.0/input
font_dir=/usr/share/fonts/truetype
font_dir_recurse=1

[osm]
URI=/osm/
TILEDIR=/var/lib/mod_tile
XML=/home/renderaccount/src/openstreetmap-carto/mapnik.xml
HOST=localhost
TILESIZE=256
MAXZOOM=20

[hydda_full]
URI=/hydda/full/
TILEDIR=/var/lib/mod_tile
XML=/home/renderaccount/hydda/hydda_full.xml
HOST=localhost
TILESIZE=256
MAXZOOM=20

[hydda_base]
URI=/hydda/base/
TILEDIR=/var/lib/mod_tile
XML=/home/renderaccount/hydda/hydda_base.xml
HOST=localhost
TILESIZE=256
MAXZOOM=20

[hydda_roads_and_labels]
URI=/hydda/roads_and_labels/
TILEDIR=/var/lib/mod_tile
XML=/home/renderaccount/hydda/hydda_roads_and_labels.xml
HOST=localhost
TILESIZE=256
MAXZOOM=20
```

### Todo

There is much that can be done to improve this style further.
* Add large lakes at z0-z3.
* Better selection of cities. 
  * Perhaps capitals only at z2?
  * Prioritize cities with great population
  * Problematic to find places in northern Norway, Sweden and Finland. Should show up at lower zoom when no other larger cities are showing up in a tile.
* OSM is missing most all forest, e.g. no Taiga nor Amazon. 
   * Attempt to find a coarse data set with polygons that can be cut at coastlines and make holes for mountains and lakes, for use at z0-z9 or so.
   * Take a look at the [FAO coverage map](http://www.fao.org/fileadmin/user_upload/FRA/images/Maps_figures_2005/2.jpg). What's the license? We could trace that. See rectified version at [MapWarper project](https://mapwarper.net/maps/45637#Preview_Rectified_Map_tab) and feel free to improve it.
* Find a fitting non-green color schema for desserts and dry land. Lighter shades of grey?
