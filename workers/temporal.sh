#!/bin/bash

# ./temporal.sh path_to_qa_tiles.mbtiles
# runs filterResidentialBuildings OSMLint validator and creates a FeatureCollection

COUNTRY=$1
WORKDIR=$2
echo "running temporal for $COUNTRY"
mkdir -p $WORKDIR/$COUNTRY/
node node_modules/osmlint/cli.js filterresidentialbuildings --zoom=12 "$COUNTRY.mbtiles" > $WORKDIR/$COUNTRY/temporal.json
