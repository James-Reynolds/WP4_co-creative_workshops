#see https://ogh23.robinlovelace.net/osm#sec-command-line



ireland = tmaptools::geocode_OSM("Galway, Ireland")$coords

osmextract::oe_match(ireland, provider = "geofabrik")

ireland_lines = osmextract::oe_get("Galway, Ireland", provider = "geofabrik", force_vectortranslate = TRUE)

osmextract::oe_download_directory()
