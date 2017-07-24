#!/bin/bash

array=$(amixer get Master |grep % |awk '{print $5}'|sed 's/[^0-9]//g')
NUM=( $array[0] )

if [ $NUM -gt 69 ]
then
    echo  $NUM%
elif [ $NUM -gt 0 ]
then
    echo  $NUM%
else
    echo  $NUM%
fi
