#!/bin/bash
#
exit=0
#LED3 submenu function 
#
function LED3_menu {
    while [ 1 ]
    do
        if [ exit -eq 1]
        then
            break
        fi 
        kdialog --menu LED3 1 "ON" 2 "OFF" 3 "BACK"
        case $? in
        1)
            #Turn on LED3
            kdialog --msgbox Turning LED3 ON ...
            #Put the code for turning LED3 on here
            break;;
        2)
            #Turn of LED3
            kdialog --msgbox Turning LED3 OFF ...
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