#!/bin/bash

# sudo apt install inotify-tools

WAIT=3
LOG=events.log

make clean html
lst=`date +%s`

inotifywait -m -e modify -e create -e delete -e move -e moved_to -e moved_from -e close_write -e delete_self -r \
    --exclude '.*\~' source > $LOG &

while true; do
    if [ `stat -c %Y $LOG` -gt "$lst" ]; then
        echo "Modified."
        while [ $(( `date +%s` - `stat -c %Y $LOG` )) -lt "$WAIT" ]; do
            echo "Wait..."
            sleep 1
        done
        > $LOG
        lst=`date +%s`
        make clean html
    else
        sleep 1
    fi
done