#!/bin/bash

#screen save afer 20 mins.
xset dpms 0 0 1200


#xinput for mousepad fix
xinput set-prop 16 352 1
xinput set-prop 16 329 1

./keyboardStartupFix.sh

xset s off
