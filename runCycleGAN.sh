#!/bin/bash
. "./share/myPics_incoming/CycleTraffic.conf"
FILE=$1

CYAN='\033[0;36m'
PURPLE='\033[0;35m'
NC='\033[0m'

if [ -e $INDIR/$FILE ]
then
{
    cp $INDIR/$FILE $XDIR/testA/
    mv $INDIR/$FILE $XDIR/testB/

    cd $GANDIR

    if [ ! -z "$COMMAND_A" ]
    then
    {
    echo "${PURPLE}EXECUTING COMMAND A = $COMMAND_A${NC}"
    eval "$COMMAND_A"
    cp $GANDIR/results/$MODEL_A/latest_test/images/fake_B/*.png $XDIR/testA/
    cp $GANDIR/results/$MODEL_A/latest_test/images/fake_B/*.png $XDIR/testB/
    }
    fi

    if [ ! -z "$COMMAND_B" ]
    then
    {
    echo "${PURPLE}EXECUTING COMMAND B = $COMMAND_B${NC}"
    eval "$COMMAND_B"
    cp $GANDIR/results/$MODEL_B/latest_test/images/fake_B/*.png $XDIR/testA/
    cp $GANDIR/results/$MODEL_B/latest_test/images/fake_B/*.png $XDIR/testB/
    }
    fi

    if [ ! -z "$COMMAND_C" ]
    then
    {
    echo "${PURPLE}EXECUTING COMMAND C = $COMMAND_C${NC}"
    eval "$COMMAND_C"
    cp $GANDIR/results/$MODEL_C/latest_test/images/fake_B/*.png $XDIR/testA/
    cp $GANDIR/results/$MODEL_C/latest_test/images/fake_B/*.png $XDIR/testB/
    }
    fi

    if [ ! -z "$COMMAND_D" ]
    then
    {
    echo "${PURPLE}EXECUTING COMMAND D = $COMMAND_D${NC}"
    eval "$COMMAND_D" 
    cp $GANDIR/results/$MODEL_D/latest_test/images/fake_B/*.png $XDIR/testA/
    cp $GANDIR/results/$MODEL_D/latest_test/images/fake_B/*.png $XDIR/testB/
    }
    fi

    if [ ! -z "$COMMAND_E" ]
    then
    {
    echo "${PURPLE}EXECUTING COMMAND E = $COMMAND_E${NC}"
    eval "$COMMAND_E"
    cp $GANDIR/results/$MODEL_E/latest_test/images/fake_B/*.png $XDIR/testA/
    cp $GANDIR/results/$MODEL_E/latest_test/images/fake_B/*.png $XDIR/testB/
    }
    fi

    if [ ! -z "$COMMAND_F" ]
    then
    {
    echo "${PURPLE}EXECUTING COMMAND F = $COMMAND_F${NC}"
    eval "$COMMAND_F"
    cp $GANDIR/results/$MODEL_F/latest_test/images/fake_B/*.png $XDIR/testA/
    cp $GANDIR/results/$MODEL_F/latest_test/images/fake_B/*.png $XDIR/testB/
    }
    fi

    cp $XDIR/testA/*.png $OUTDIR/
}
fi
