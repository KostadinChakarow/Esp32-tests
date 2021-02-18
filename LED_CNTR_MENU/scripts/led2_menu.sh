#!/bin/bash
#
exit=0
#LED2 submenu function 
#
function led2_menu {
    while [ 1 ]
    do
        if [ exit -eq 1]
        then
            break
        fi 
        kdialog LED2 1 "ON" 2 "OFF" 3 "BACK"
        case $? in
        1)
            #Turn on LED2
            --msgbox Turning LED2 ON ...
            #Put the code for turning LED2 on here
            break;;
        2)
            #Turn of LED2
            --msgbox Turning LED2 OFF ...
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