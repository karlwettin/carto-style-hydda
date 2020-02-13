-- This is a list of indices recommended for your PostgreSQL when hosting Hydda styles.
-- Commented out are indices recommended if you also host the default OpenStreetMap-Carto style.

-- Area label related indices.
CREATE INDEX idx_hydda_area_label_a1 ON planet_osm_polygon USING gist (way) WHERE name IS NOT NULL AND building NOT IN ('', 'no', '0', 'false');
CREATE INDEX idx_hydda_area_label_b2 ON planet_osm_polygon USING gist (way) WHERE name IS NOT NULL;

CREATE INDEX idx_hydda_osm_polygon_way_area_100000 ON planet_osm_polygon USING GIST (way) WHERE way_area > 100000;
CREATE INDEX idx_hydda_planet_osm_polygon_way_area_10000 ON planet_osm_polygon USING GIST (way) WHERE way_area > 10000;
CREATE INDEX idx_hydda_planet_osm_polygon_way_area_1000 ON planet_osm_polygon USING GIST (way) WHERE way_area > 1000;
--CREATE INDEX idx_planet_osm_polygon_way_area_z10 ON planet_osm_polygon USING GIST (way) WHERE way_area > 23300;
--CREATE INDEX idx_planet_osm_polygon_way_area_z6 ON planet_osm_polygon USING GIST (way) WHERE way_area > 5980000;


-- Indices on planet_osm_polygon
CREATE INDEX "idx_poly_aeroway" on planet_osm_polygon  USING gist (way) WHERE "aeroway" IS NOT NULL ;
--CREATE INDEX "idx_poly_historic" on planet_osm_polygon  USING gist (way) WHERE "historic" IS NOT NULL ;
CREATE INDEX "idx_poly_leisure" on planet_osm_polygon  USING gist (way) WHERE "leisure" IS NOT NULL ;
CREATE INDEX "idx_poly_man_made" on planet_osm_polygon  USING gist (way) WHERE "man_made" IS NOT NULL ;
--CREATE INDEX "idx_poly_military" on planet_osm_polygon  USING gist (way) WHERE "military" IS NOT NULL ;
--CREATE INDEX "idx_poly_power" on planet_osm_polygon  USING gist (way) WHERE "power" IS NOT NULL ;
CREATE INDEX "idx_poly_landuse" on planet_osm_polygon  USING gist (way) WHERE "landuse" IS NOT NULL ;
CREATE INDEX "idx_poly_amenity" on planet_osm_polygon  USING gist (way) WHERE "amenity" IS NOT NULL ;
CREATE INDEX "idx_poly_natural" on planet_osm_polygon  USING gist (way) WHERE "natural" IS NOT NULL ;
CREATE INDEX "idx_poly_highway" on planet_osm_polygon  USING gist (way) WHERE "highway" IS NOT NULL ;
CREATE INDEX "idx_poly_tourism" on planet_osm_polygon  USING gist (way) WHERE "tourism" IS NOT NULL ;
CREATE INDEX "idx_poly_building" on planet_osm_polygon  USING gist (way) WHERE "building" IS NOT NULL ;
CREATE INDEX "idx_poly_barrier" on planet_osm_polygon  USING gist (way) WHERE "barrier" IS NOT NULL ;
CREATE INDEX "idx_poly_railway" on planet_osm_polygon  USING gist (way) WHERE "railway" IS NOT NULL ;
--CREATE INDEX "idx_poly_aerialway" on planet_osm_polygon  USING gist (way) WHERE "aerialway" IS NOT NULL ;
--CREATE INDEX "idx_poly_power_source" on planet_osm_polygon  USING gist (way) WHERE "power_source" IS NOT NULL ;
--CREATE INDEX "idx_poly_generator:source" on planet_osm_polygon  USING gist (way) WHERE "generator:source" IS NOT NULL ;

-- Indices on planet_osm_line
--CREATE INDEX "idx_line_aerialway" on planet_osm_line  USING gist (way) WHERE "aerialway" IS NOT NULL ;
CREATE INDEX "idx_line_waterway" on planet_osm_line  USING gist (way) WHERE "waterway" IS NOT NULL ;
CREATE INDEX "idx_line_bridge" on planet_osm_line  USING gist (way) WHERE "bridge" IS NOT NULL ;
CREATE INDEX "idx_line_tunnel" on planet_osm_line  USING gist (way) WHERE "tunnel" IS NOT NULL ;
CREATE INDEX "idx_line_access" on planet_osm_line  USING gist (way) WHERE "access" IS NOT NULL ;
CREATE INDEX "idx_line_railway" on planet_osm_line  USING gist (way) WHERE "railway" IS NOT NULL ;
--CREATE INDEX "idx_line_power" on planet_osm_line  USING gist (way) WHERE "power" IS NOT NULL ;
CREATE INDEX "idx_line_name" on planet_osm_line  USING gist (way) WHERE "name" IS NOT NULL ;
CREATE INDEX "idx_line_ref" on planet_osm_line  USING gist (way) WHERE "ref" IS NOT NULL ;

-- Indices on planet_osm_point
--CREATE INDEX "idx_point_aerialway" on planet_osm_point  USING gist (way) WHERE "aerialway" IS NOT NULL ;
--CREATE INDEX "idx_point_power_source" on planet_osm_point  USING gist (way) WHERE "power_source" IS NOT NULL ;
--CREATE INDEX "idx_point_shop" on planet_osm_point  USING gist (way) WHERE "shop" IS NOT NULL ;
CREATE INDEX "idx_point_place" on planet_osm_point  USING gist (way) WHERE "place" IS NOT NULL ;
CREATE INDEX "idx_point_barrier" on planet_osm_point  USING gist (way) WHERE "barrier" IS NOT NULL ;
CREATE INDEX "idx_point_railway" on planet_osm_point  USING gist (way) WHERE "railway" IS NOT NULL ;
CREATE INDEX "idx_point_amenity" on planet_osm_point  USING gist (way) WHERE "amenity" IS NOT NULL ;
CREATE INDEX "idx_point_natural" on planet_osm_point  USING gist (way) WHERE "natural" IS NOT NULL ;
CREATE INDEX "idx_point_highway" on planet_osm_point  USING gist (way) WHERE "highway" IS NOT NULL ;
CREATE INDEX "idx_point_tourism" on planet_osm_point  USING gist (way) WHERE "tourism" IS NOT NULL ;
--CREATE INDEX "idx_point_power" on planet_osm_point  USING gist (way) WHERE "power" IS NOT NULL ;
CREATE INDEX "idx_point_aeroway" on planet_osm_point  USING gist (way) WHERE "aeroway" IS NOT NULL ;
--CREATE INDEX "idx_point_historic" on planet_osm_point  USING gist (way) WHERE "historic" IS NOT NULL ;
CREATE INDEX "idx_point_leisure" on planet_osm_point  USING gist (way) WHERE "leisure" IS NOT NULL ;
CREATE INDEX "idx_point_man_made" on planet_osm_point  USING gist (way) WHERE "man_made" IS NOT NULL ;
CREATE INDEX "idx_point_waterway" on planet_osm_point  USING gist (way) WHERE "waterway" IS NOT NULL ;
--CREATE INDEX "idx_point_generator:source" on planet_osm_point  USING gist (way) WHERE "generator:source" IS NOT NULL ;
--CREATE INDEX "idx_point_capital" on planet_osm_point  USING gist (way) WHERE "capital" IS NOT NULL ;
--CREATE INDEX "idx_point_lock" on planet_osm_point  USING gist (way) WHERE "lock" IS NOT NULL ;
CREATE INDEX "idx_point_landuse" on planet_osm_point  USING gist (way) WHERE "landuse" IS NOT NULL ;
--CREATE INDEX "idx_point_military" on planet_osm_point  USING gist (way) WHERE "military" IS NOT NULL ;




