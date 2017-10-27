#!/bin/bash
. "./share/myPics_incoming/CycleTraffic.conf"

OPTS=`getopt -o vhns: --long verbose: -n 'parse-options' -- "$@"`
VERBOSE=false

while true; do
  case "$1" in
    -v | --verbose ) VERBOSE=true; shift ;;
    -- ) shift; break ;;
    * ) break ;;
  esac
done

CYAN='\033[0;36m'
GREEN='\033[0;32m'
NC='\033[0m'

echo "Monitoring incoming path: $INDIR"
echo "Internally storing files at: $XDIR"
echo "Writing to outgoing path: $OUTDIR"

MONITORDIR=$INDIR
inotifywait -e close_write --format '%f' "${MONITORDIR}" | while read NEWFILE
do
    if [ $NEWFILE = "pic.png" ]
    then
    {
    echo "${CYAN}RECEIVED " $NEWFILE "${NC}"
    (
        if [ "$VERBOSE" = false ]
        then
        {
           sh ./runCycleGAN.sh $NEWFILE > /dev/null
        }
        else
        {
           echo "Running CycleGAN"
           sh ./runCycleGAN.sh $NEWFILE
        }
        fi
        echo "${GREEN}PROCESSED " $NEWFILE "${NC}"
    )&
    }
    fi
done

echo "Restarting watch"
if [ "$VERBOSE" = false ]
then
{
    sh ./watch_dir.sh
}
else
{
    sh ./watch_dir.sh --verbose
}
fi
