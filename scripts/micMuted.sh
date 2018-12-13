#!/bin/bash
if amixer sget 'Capture',0 | grep '\[on\]' > /dev/null ; then
    echo ""
else
    echo ""
fi
