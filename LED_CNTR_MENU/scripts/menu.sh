#!/bin/bash
#
# Menu for turning ON/OFF and dimming LEDS 
#
###############################VARIABLE###############################
temp1_main=$(mktemp -t temp_main.XXXXXX)
exit_main=0
#############################FUNCTIONS DEFINITIONS####################
. ./menu_func.sh
###############################MAIN LOOP##############################
#Print the menu
while [ 1 ]
do
    if [ $exit_main -eq 0 ]
    then
        menu_func
    else
        break
    fi
    
    
done