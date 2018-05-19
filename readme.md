osm2matsim
===

Simple Java application to convert OSM files to MATSim network format, using MATSim APIs.
Based on section 7.2.1 from [the book](https://www.matsim.org/the-book) and on the [RunPNetworkGenerator example](https://github.com/matsim-org/matsim-code-examples/blob/0.9.x/src/main/java/tutorial/population/example08DemandGeneration/RunPNetworkGenerator.java)..


# Prerequisites #
A system with Docker installed for converting OSM files into Matsim network files. Java for network visualization and editing with [networkEditor](https://www.matsim.org/extension/networkeditor).

# Usage #
1. Download the broad map files from http://download.geofabrik.de/

2. Extract the desired bounding box from the larger file:
```
./vendor/osmosis/bin/osmosis --rb file=south-america-latest.osm.pbf \ 
 --bounding-box top=-23.5948 left=-46.6807 bottom=-23.5984 right=-46.6736 \ 
 completeWays=true --used-node --write-xml fiandeiras.osm
```

3. Build the converter:
```
./bin/build.sh
```

4. Convert:
```
./bin/convert.sh input/fiandeiras.osm output/fiandeiras.xml
```

5. (Optional) Visualize and edit network:
```
./bin/edit_network.sh
```

## Repository structure rationale ##
### Why Docker? ###
To avoid issues with different jdk versions.

### Why not maven or gradle? ###
Project too simple to justify this tools. We rely on `javac` and `java` with manually set classpaths. 
