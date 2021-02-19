#!/bin/bash
#
exit=0
temp_led3=$(mktemp -t temp_led3.XXXXXX)
#LED3 submenu function 
#
function led3_menu {
    while [ 1 ]
    do
         
        kdialog --menu LED3 1 "ON" 2 "OFF" 3 "BACK" > $temp_led3

        if [ $? -eq 1 ]
        then
            #menu
            break
        fi

        selection_led3=$(cat $temp_led3)

        case $selection_led3 in
        1)
            #Turn on LED3
            kdialog --msgbox "Turning LED3 ON ..."
            #Put the code for turning LED3 on here
            break;;
        2)
            #Turn of LED3
            kdialog --msgbox "Turning LED3 OFF ..."
            #Put the code for turning LED3 on here
            break;;
        3)
            #Go back to main menu
            exit=1
            #Put the code for turning LED3 on here
            break;;
        esac
    done  
}