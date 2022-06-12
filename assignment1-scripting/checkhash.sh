#!/bin/bash
FILE=~/.hushlogin
if [ -f "$FILE" ]; then
    echo "$FILE file exists, All Good."
else
    touch ~/.hushlogin
    echo "$FILE File  Created"
fi