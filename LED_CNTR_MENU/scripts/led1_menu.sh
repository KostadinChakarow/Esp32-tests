#!/bin/bash
#
#. ./menu.sh
#
exit=0
temp_led1=$(mktemp -t temp_led1.XXXXXX)
#LED1 submenu function 
#
function led1_menu {
    while [ 1 ]
    do
         
        kdialog --menu LED1 1 "ON" 2 "OFF" 3 "BACK" > $temp_led1

        
        if [ $? -eq 1 ]
        then
            #menu
            break
        fi

        selection_led1=$(cat $temp_led1)

        case $selection_led1 in
        1)
            #Turn on LED1
            kdialog --msgbox "Turning LED1 ON ..."
            #Put the code for turning LED1 on here
            break;;
        2)
            #Turn of LED2
            kdialog --msgbox "Turning LED2 OFF ..."
            #Put the code for turning LED2 on here
            break;;
        3)
            #Go back to main menu
            exit=1
            #Put the code for turning LED3 on here
            break;;
        esac
    done  
}