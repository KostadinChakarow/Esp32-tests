#!/bin/bash
#
# Menu for turning ON/OFF and dimming LEDS 
#
###############################VARIABLE###############################
temp1_main=$(mktemp -t temp_main.XXXXXX)
#############################FUNCTIONS DEFINITIONS####################
. ./led1_menu.sh
. ./led2_menu.sh
. ./led3_menu.sh
###############################MAIN LOOP##############################
#Print the menu
function menu_func {
    while [ 1 ]
do
    clear
    kdialog --menu LED 1 "LED 1" 2 "LED 2" 3 "LED 3" > $temp1_main

    if [ $? -eq 1 ]
        then
            exit_main=1
            break
        fi
    
    selection_main=$(cat $temp1_main)

    case $selection_main in
    1)
        #Open LED1 submenu
        clear
        led1_menu
        break;;
    2)
        #Open LED1 submenu
        clear
        led2_menu
        break;;
        #Turn on Led 2
    3)
        #Open LED1 submenu
        clear
        led3_menu
        break;;
        ##Turn on Led 3
    esac
    done
}
