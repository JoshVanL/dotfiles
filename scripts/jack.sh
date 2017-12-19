#!/bin/bash

amixer sset 'Headphone Mic Boost' 10dB

pkill -RTMIN+1 i3blocks
