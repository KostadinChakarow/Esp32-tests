#!/bin/bash
#
exit=0
temp_led2=$(mktemp -t temp_led2.XXXXXX)
#LED2 submenu function 
#
function led2_menu {
    while [ 1 ]
    do
         
        kdialog --menu LED2 1 "ON" 2 "OFF" 3 "BACK" > $temp_led2

        if [ $? -eq 1 ]
        then
           # menu
            break
        fi

        selection_led2=$(cat $temp_led2)

        case $selection_led2 in
        1)
            #Turn on LED2
            kdialog --msgbox "Turning LED2 ON ..."
            #Put the code for turning LED2 on here
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