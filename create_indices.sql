-- This is a list of indices recommended for your PostgreSQL when hosting Hydda styles.

CREATE INDEX "idx_hydda_landuse_gen0" ON planet_osm_polygon USING gist (way) WHERE way_area > 100000;
CREATE INDEX "idx_hydda_landuse_gen1" ON planet_osm_polygon USING gist (way) WHERE way_area > 10000;
CREATE INDEX "idx_hydda_grounds" ON planet_osm_polygon USING gist (way) WHERE leisure IN ('sports_centre','stadium','pitch','track');
CREATE INDEX "idx_hydda_waterway_low" ON planet_osm_polygon USING gist (way) WHERE waterway IN ('river', 'canal');
CREATE INDEX "idx_hydda_waterway_med" ON planet_osm_polygon USING gist (way) WHERE waterway IN ('river', 'canal', 'stream');
CREATE INDEX "idx_hydda_waterway_high" ON planet_osm_polygon USING gist (way) WHERE waterway IN ('river', 'canal', 'stream', 'ditch', 'drain');
CREATE INDEX "idx_hydda_water_gen0" ON planet_osm_polygon USING gist (way) WHERE ("natural" IN ('water', 'pond') OR waterway IN ('basin', 'canal', 'mill_pond', 'pond', 'riverbank', 'stream')) AND way_area > 10000;
CREATE INDEX "idx_hydda_water_gen1" ON planet_osm_polygon USING gist (way) WHERE ("natural" IN ('water', 'pond') OR waterway IN ('basin', 'canal', 'mill_pond', 'pond', 'riverbank', 'stream')) AND way_area > 1000;
CREATE INDEX "idx_hydda_water" ON planet_osm_polygon USING gist (way) WHERE "natural" IN ('water', 'pond') OR waterway IN ('basin', 'canal', 'mill_pond', 'pond', 'riverbank', 'stream');
CREATE INDEX "idx_hydda_landuse_overlays" ON planet_osm_polygon USING gist (way) WHERE leisure = 'nature_reserve';
CREATE INDEX "idx_hydda_admin" ON planet_osm_line USING gist (way) WHERE boundary = 'administrative' AND admin_level IN ('2','3','4'));
CREATE INDEX "idx_hydda_tunnel" ON planet_osm_line USING gist (way) WHERE tunnel NOT IN ('', '0', 'no');
CREATE INDEX "idx_hydda_buildings" ON planet_osm_polygon USING gist (way) WHERE building NOT IN ('0','false', 'no');
CREATE INDEX "idx_hydda_aeroway" ON planet_osm_line USING gist (way) WHERE aeroway IN ('apron', 'runway', 'taxiway');
CREATE INDEX "idx_hydda_turning_circle_case" ON planet_osm_point USING gist (way) WHERE highway = 'turning_circle';
CREATE INDEX "idx_hydda_roads_high" ON planet_osm_line USING gist (way) WHERE (highway IS NOT NULL OR railway IS NOT NULL) AND (tunnel IS NULL OR tunnel = 'no') AND (bridge IS NULL OR bridge = 'no');
CREATE INDEX "idx_hydda_roads_med" ON planet_osm_roads USING gist (way) WHERE highway IN ('motorway', 'trunk', 'primary', 'secondary', 'motorway_link', 'trunk_link');
CREATE INDEX "idx_hydda_roads_low" ON planet_osm_roads USING gist (way) WHERE highway IN ('motorway', 'trunk');
CREATE INDEX "idx_hydda_turning_circle_fill" ON planet_osm_point USING gist (way) WHERE highway = 'turning_circle';
CREATE INDEX "idx_hydda_bridge" ON planet_osm_line USING gist (way) WHERE bridge NOT IN ('', '0', 'no');
CREATE INDEX "idx_hydda_piers" ON planet_osm_line USING gist (way) WHERE man_made in ('pier','breakwater','groyne');
CREATE INDEX "idx_hydda_piers-area" ON planet_osm_polygon USING gist (way) WHERE man_made in ('pier','breakwater','groyne');
CREATE INDEX "idx_hydda_place" ON planet_osm_point USING gist (way) WHERE place in ('country', 'state', 'city', 'town', 'village', 'hamlet', 'suburb', 'neighbourhood', 'locality');
CREATE INDEX "idx_hydda_area_label_1" ON planet_osm_polygon USING gist (way) WHERE name IS NOT NULL;
CREATE INDEX "idx_hydda_area_label_2" ON planet_osm_polygon USING gist (way) WHERE name IS NOT NULL AND building NOT IN ('', 'no', '0', 'false');
CREATE INDEX "idx_hydda_motorway_label" ON planet_osm_line USING gist (way) WHERE highway IN ('motorway', 'trunk') AND (name IS NOT NULL OR ref IS NOT NULL);
CREATE INDEX "idx_hydda_mainroad_label" ON planet_osm_line USING gist (way) WHERE (name IS NOT NULL OR oneway IN ('yes', 'true', '1', '-1')) AND highway IN ('primary', 'secondary', 'tertiary');
CREATE INDEX "idx_hydda_minorroad_label" ON planet_osm_line USING gist (way) WHERE (name IS NOT NULL OR oneway IN ('yes', 'true', '1', '-1')) AND highway IN ('pedestrian', 'residential', 'unclassified', 'road', 'living_street', 'unknown');
CREATE INDEX "idx_hydda_waterway_label" ON planet_osm_line USING gist (way) WHERE waterway IN ('canal', 'river', 'stream');
CREATE INDEX "idx_hydda_island_label_polygon" ON planet_osm_polygon USING gist (way) WHERE name IS NOT NULL AND (place = 'island' OR place='islet');
CREATE INDEX "idx_hydda_island_label_point" ON planet_osm_point USING gist (way) WHERE name IS NOT NULL AND (place = 'island' OR place='islet');
CREATE INDEX "idx_hydda_housenames_polygon" ON planet_osm_polygon USING gist (way) WHERE "addr:housename" IS NOT NULL AND building IS NOT NULL;
CREATE INDEX "idx_hydda_housenames_point" ON planet_osm_point USING gist (way) WHERE "addr:housename" IS NOT NULL;
CREATE INDEX "idx_hydda_housenumbers_polygon" ON planet_osm_polygon USING gist (way) WHERE "addr:housenumber" IS NOT NULL AND building IS NOT NULL;
CREATE INDEX "idx_hydda_housenumbers_point" ON planet_osm_point USING gist (way) WHERE "addr:housenumber" IS NOT NULL;





