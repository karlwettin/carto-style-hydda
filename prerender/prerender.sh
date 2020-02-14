#!/bin/bash

MAP=$1

# The OpenStreetMap Sweden tile server has 18 cores, 48 GB of RAM and PostgreSQL on single 2TB EVO SSD.

render_list -n 1 -m $MAP -a -z 0 -Z 4
# At zoom 5 with 2 threads, about 1 minute per meta tile and renderd process consume 40GB RAM at peeks, for both base and full layer.
render_list -n 2 -m $MAP -a -z 5 -Z 7
render_list -n 4 -m $MAP -a -z 8 -Z 9
# At zoom 10 with 16 threads, about 1 second per meta tile for base layer
# At zoom 12 with 16 threads, about 4 seconds per meta tile for full layer
render_list -n 6 -m $MAP -a -z 16 -Z 12

# Our txt files contains tiles covering selected cities zoom 13 - 17.
for f in *.txt
do
        echo Prerendering $f
        cat $f | render_list -n 16 -s /var/run/renderd/renderd.sock -m $MAP
done
