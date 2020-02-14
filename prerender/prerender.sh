#!/bin/bash

MAP=$1

# The OpenStreetMap Sweden tile server has 18 cores, 48 GB of RAM and PostgreSQL on single 2TB EVO SSD.

render_list -n 1 -m $MAP -a -z 0 -Z 4
# At zoom 5 with 2 threads, about 60 seconds per meta tile and renderd process consume 40GB RAM at peeks.
render_list -n 2 -m $MAP -a -z 5 -Z 7
render_list -n 4 -m $MAP -a -z 8 -Z 9
render_list -n 6 -m $MAP -a -z 10 -Z 10
render_list -n 8 -m $MAP -a -z 11 -Z 11
# At zoom 12 with 16 threads, about 4 seconds per meta tile
render_list -n 16 -m $MAP -a -z 12 -Z 12

# Our txt files contains tiles covering selected cities zoom 13 - 17.
for f in *.txt
do
        echo Prerendering $f
        cat $f | render_list -n 16 -s /var/run/renderd/renderd.sock -m $MAP
done
