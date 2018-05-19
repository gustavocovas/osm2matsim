#!/bin/bash

docker run -v $PWD/input:/osm2matsim/input -v $PWD/output:/osm2matsim/output -it osm2matsim $@