#!/bin/bash
#
exit=0
#LED1 submenu function 
#
function led1_menu {
    while [ 1 ]
    do
        if [ exit -eq 1]
        then
            break
        fi 
        kdialog --menu LED1 1 "ON" 2 "OFF" 3 "BACK"
        case $? in
        1)
            #Turn on LED1
            kdialog --msgbox Turning LED1 ON ...
            #Put the code for turning LED1 on here
            break;;
        2)
            #Turn of LED2
            kdialog --msgbox Turning LED2 OFF ...
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