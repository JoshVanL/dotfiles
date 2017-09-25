#!/bin/bash

amixer sset 'Headphone Mic Boost' 20%
pkill -RTMIN+1 i3blocks
