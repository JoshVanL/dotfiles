#!/bin/bash
acpi=$(acpi -b)
percent=$(echo $acpi | grep -o '[0-9]*%' | grep -o '[0-9]*')

q4=""
q3=""
q2=""
q1=""
q0=""
path="/home/josh/scripts/currBat"

curr=$(cat $path)

function charging {
    if [ $percent -gt 95 ]
    then
        echo $q4 > $path
        printf $q4
    elif [ $percent -ge 75 ]
    then
        if [[ $curr == $q4 ]]
        then
            echo $q3 > $path
            printf $q3
        else
            echo  $q4 > $path;
            printf $q4
        fi
    elif [ $percent -ge 50 ]
    then
        if [[ $curr == $q4 ]]
        then
            echo $q2 > $path
            printf $q2
        elif [[ $curr == $q2 ]]
        then
            echo  $q3 > $path
            printf $q3
        else
            echo $q4 > $path
            printf $q4
        fi
    elif [ $percent -ge 25 ]
    then
        if [[ $curr == $q4 ]]
        then
            echo $q1 > $path
            printf $q1
        elif [[ $curr == $q1 ]]
        then
            echo  $q2 > $path
            printf $q2
        elif [[ $curr == $q3 ]]
        then
            echo $q3 > $path
            printf $q3
        else
            echo $q4 > $path
            printf $q4
        fi
    else
        if [[ $curr == $q4 ]]
        then
            echo $q0 > $path
            printf $q0
        elif [[ $curr == $q0 ]]
        then
            echo  $q1 > $path
            printf $q1
        elif [[ $curr == $q1 ]]
        then
            echo $q2 > $path
            printf $q2;
        elif [[ $curr == $q2 ]]
        then
            echo $q3 > $path
            printf $q3
        else
            echo $q4 > $path
            printf $q4
        fi
    fi
}

function other {
    if [ $percent -ge 95 ]
    then
        printf $q4
    elif [ $percent -ge 75 ]
    then
        printf  $q3
    elif [ $percent -ge 50 ]
    then
        printf $q2
    elif [ $percent -ge 20 ]
    then
        printf $q1
    else
        printf $q0
    fi
}

if [[ $(echo $acpi | grep -o "Charging") == "Charging" ]]
then
    charging
    printf "  $percent%%"
    printf " CHR $(echo $acpi | grep -o '[0-9]:[0-9][0-9]')"
else
    other
    printf "  $percent%%"
    if [[ $(echo $acpi | grep -o "Discharging") == "Discharging" ]]
    then
        printf " DIS $(echo $acpi | grep -o '[0-9]:[0-9][0-9]')"
    fi
fi


if [ $percent -ge 97 ]
then
	printf "\n\n#FF0000\n"
elif [ $percent -ge 90 ]
then
	printf "\n\n#a2ff6d\n"
elif [ $percent -ge 80 ]
then
    printf "\n\n#bff466\n"
elif [ $percent -ge 70 ]
then
	printf "\n\n#ebf466\n"
elif [ $percent -ge 60 ]
then
	printf "\n\n#ffb55b\n"
elif [ $percent -ge 50 ]
then
    printf "\n\n#ff7f7f\n"
elif [ $percent -ge 40 ]
then
	printf "\n\n#ff5656\n"
elif [ $percent -ge 30 ]
then
	printf "\n\n#ff2828\n"
elif [ $percent -ge 20 ]
then
    printf "\n\n#ff3a3a\n"
elif [ $percent -ge 10 ]
then
    printf "\n\n#ff1c1c\n"
else
	printf "\n\n#FF0000\n"
fi
exit
