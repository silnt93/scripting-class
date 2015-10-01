#!/bin/bash

# this script prints out hello world in an ugly way
# This was written by Ana Aragon

echo -n "helb wold" |sed -e "s/b/o/g" -e "s/l/ll/" -e "s/ol/orl/" |tr "h" "H"|tr "w" "W"