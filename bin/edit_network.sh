#!/bin/bash

java -cp \
  vendor/matsim-0.9.0/matsim-0.9.0.jar:vendor/networkEditor-0.9.0/networkEditor-0.9.0.jar \
  org.matsim.contrib.networkEditor.run.RunNetworkEditor 
