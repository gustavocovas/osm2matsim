westlimit=10.001019; southlimit=54.251083; eastlimit=10.228299; northlimit=54.408039

./vendor/osmosis/bin/osmosis --rb file=./input/schleswig-holstein-latest.osm.pbf --bounding-box top=54.408039 left=10.001019 bottom=54.251083 right=10.228299 completeWays=true --used-node --write-xml ./input/kiel.osm

docker pull eclipse-temurin:8-jdk-jammy