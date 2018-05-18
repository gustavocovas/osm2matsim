osm2matsim
===

Simple Java application to convert OSM files to MATSim network format, using MATSim APIs.
Based on section 7.2.1 from [the book](https://www.matsim.org/the-book) and on the [RunPNetworkGenerator example](https://github.com/matsim-org/matsim-code-examples/blob/0.9.x/src/main/java/tutorial/population/example08DemandGeneration/RunPNetworkGenerator.java)..

TODO: Update instructions to dump maven

# Prerequisites #

1. Java and Maven
2. [Osmosis](https://wiki.openstreetmap.org/wiki/Osmosis) for processing OSM files.

# Usage #

1. Download the broad map files from http://download.geofabrik.de/

2. Extract the desired bounding box from the larger file:
```
./vendor/osmosis/bin/osmosis --rb file=south-america-latest.osm.pbf \ 
 --bounding-box top=-23.5948 left=-46.6807 bottom=-23.5984 right=-46.6736 \ 
 completeWays=true --used-node --write-xml fiandeiras.osm
```

3. Convert:
```
mvn exec:java -Dexec.args="fiandeiras.osm output/fiandeiras.xml"
```
