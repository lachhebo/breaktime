#!/usr/bin/env bash 


display_cow_at_night() {
    echo " _________________________________
< time to relax, see you tommorow >
 ---------------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/
                ||----w |
                ||     ||"
}


display_cow_during_weekend(){
    echo " __________________________________
< time to relax, see you on monday >
 ----------------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/
                ||----w |
                ||     ||"
}


check_if_weekend() {
    DATE_DAY=$(date +"%w")
    [[ $DATE_DAY =  0 ]] && display_cow_during_weekend && exit 1 
    [[ $DATE_DAY =  6 ]] && display_cow_during_weekend && exit 1 
}

check_if_night() {
    DATE_HOUR=$(date +"%k")
    [[ $DATE_HOUR -ge 20 ]] && display_cow_at_night && exit 1
    [[ $DATE_HOUR -lt 3 ]]  && display_cow_at_night && exit 1
}

check_if_night
check_if_weekend
exit 0