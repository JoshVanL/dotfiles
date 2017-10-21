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
    if [ $percent -eq 100 ]
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
        elif [[ $curr == $q2 ]]
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
            printf $q2
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
else
    other
    printf "  $percent%%"
fi


if [ $percent -ge 99 ]
then
	printf "\n\n#FFFFFF\n"
elif [ $percent -ge 90 ]
then
	printf "\n\n#ccffcc\n"
elif [ $percent -ge 70 ]
then
    printf "\n\n#bbffbb\n"
elif [ $percent -ge 60 ]
then
	printf "\n\n#ddffaa\n"
elif [ $percent -ge 50 ]
then
	printf "\n\n#eeffaa\n"
elif [ $percent -ge 40 ]
then
    printf "\n\n#ffdd77\n"
elif [ $percent -ge 30 ]
then
	printf "\n\n#ffbb44\n"
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
