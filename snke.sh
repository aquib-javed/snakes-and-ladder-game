#! /bin/bash
sump1=0
sump2=0
end=100
toss()
{
echo "Enter first player name"
read p1
echo "Enter 2nd player name"
read p2
echo "lets toss "
toss=$(( ( RANDOM % 2 ) + 1 ))
if [ $toss == 1 ]
then
echo "#################   $p1 win the toss    ################ "
lastpos=1
timeout 2s ping clear #Wait for 5 seconds
else
echo "#################    $p2 win the toss     ################ "
lastpos=2
timeout 2s ping clear #Wait for 5 seconds
fi
clear
}
win()
{

if [ $sump1 == $end ]
then
echo "#################          $p1 win the game     ################### "
timeout 2s ping clear #Wait for 5 seconds
                clear

#exit 0
MainMenu
fi
if [ $sump2 == $end ]
then
echo " ######################      $p2 win the game      ############## "
timeout 2s ping clear #Wait for 5 seconds
 clear
#exit o
#sump2=0
MainMenu
fi
}
diplay()
{
row=10
col=10
count=1
for ((i=0;i<row;i++))
   do
       for ((j=0;j<col;j++))
       do
       arrboard[$i,$j]=$count
((count++))
    done
   done



r=10
c=10
ct=1
for ((i=0;i<r;i++))   do
for ((j=1;j<c;j++)) do
        if [ $sumP1 -eq ${arrboard[$i,$j]} ] 
        then
        echo " P1 "
        elif [ $sumP2 -eq ${arrboard[$i,$j]} ] 
        then
        echo " P2 "
        else
           arrboard[$i,$j]=$ct
echo -ne "${arrboard[${i},${j}]}  |"

            fi
((ct++))
done
echo "                             ----------------------------
----------------------"
   done
timeout 2s ping clear #Wait for 5 seconds
}
player1()
{

if [ $sump1 -lt $end ]
then
roll=$(( ( RANDOM % 6 ) + 1 ))
#timeout 1s ping clear #Wait for 5 seconds
echo " |---------|"
echo " |    $roll    |"
echo " |---------|"
timeout 1s ping clear #Wait for 5 seconds
temp1=$( expr $sump1 + $roll )
if [ $temp1 -le $end ]
then
sump1=$(( $sump1 + $roll ))
case $sump1 in
 98) echo "At $p1 new position $sump1 snake found"
echo -ne '\a' #beep 
timeout 1s ping clear #Wait for 5 seconds
sump1=28
echo " $p1 new position is $sump1";;
 92) echo "At $p1 new position $sump1 snake found" 
echo -ne '\a' #beep 
timeout 1s ping clear #Wait for 5 seconds
sump1=51
echo " $p1  position is $sump1";;
83)echo "At $p1 new position $sump1 snake found" 
echo -ne '\a' #beep 
timeout 1s ping clear #Wait for 5 seconds
sump1=19
echo " $p1 new position is $sump1";;
60) echo "At $p1 position $sump1 snake found" 
echo -ne '\a' #beep 
timeout 1s ping clear #Wait for 5 seconds
 sump1=33
echo " $p1 new position is $sump1";;
59)echo "At $p1 position $sump1 snake found" 
echo -ne '\a' #beep 
timeout 1s ping clear #Wait for 5 seconds
sump1=17
echo " $p1 new position is $sump1";;
49)echo "At $p1 new position $sump1 snake found" 
echo -ne '\a' #beep 
timeout 1s ping clear #Wait for 5 seconds
sump1=9
echo " $p1 new position is $sump1";;
46)echo "At $p1 new position $sump1 snake found" 
echo -ne '\a' #beep 
timeout 1s ping clear #Wait for 5 seconds
sump1=5
echo " $p1 new position is $sump1";;

8)echo "At $p1 position $sump1 ladder found"
echo -ne '\a' #beep 
timeout 1s ping clear #Wait for 5 seconds
sump1=26
echo " $p1 new position is $sump1";;
21)echo "At $p1 position $sump1 ladder found" 
echo -ne '\a' #beep 
timeout 1s ping clear #Wait for 5 seconds
sump1=82
echo " $p1 new position is $sump1";;
43)echo "At $p1 position $sump1 ladder found"
 echo -ne '\a' #beep 
timeout 1s ping clear #Wait for 5 seconds
sump1=77
echo " $p1 new position is $sump1";;
58)echo "At $p1 position $sump1 ladder found" 
echo -ne '\a' #beep 
timeout 1s ping clear #Wait for 5 seconds
sump1=91
echo " $p1 new position is $sump1";;
62)echo "At $p1 position $sump1 ladder found" 
echo -ne '\a' #beep 
timeout 1s ping clear #Wait for 5 seconds
sump1=96
echo " $p1 new position is $sump1";;
66)echo "At $p1 position $sump1 ladder found" 
echo -ne '\a' #beep 
timeout 1s ping clear #Wait for 5 seconds
sump1=87
echo " $p1 new position is $sump1";;
89) echo "At $p1 position $sump1 ladder found" 
echo -ne '\a' #beep 
timeout 1s ping clear #Wait for 5 seconds
sump1=100
echo "$p1 new position is $sump1";;
*)echo "$p1 at $sump1 position "
echo -ne '\a' #beep 
timeout 1s ping clear #Wait for 5 seconds
esac
else
echo "Your score reaches aboves 100 so wait for the next turn "
timeout 1s ping clear #Wait for 5 seconds
echo "already at  $sump1 position "
timeout 1s ping clear #Wait for 5 seconds
fi

fi
display
win
lastpos=2
timeout 2s ping clear
clear
echo "***************** $p2 turn now*******************8 "
echo "Enter any key to roll the dice player 2"
                read charY
player2
}
player2()
{
if [ $sump2 -lt $end ]
then
roll=$(( ( RANDOM % 6 ) + 1 ))
#timeout 2s ping clear #Wait for 5 seconds
echo " |---------|"
echo " |    $roll    |"
echo " |---------|"
temp2=$( expr $sump2 + $roll )
if [ $temp2 -le $end ]
then
sump2=$(( $sump2 + $roll ))
case $sump2 in
 98) echo "At $p2 new position $sump2 snake found"
echo -ne '\a' #beep 
timeout 1s ping clear #Wait for 5 seconds
sump2=28
echo " $p2 new position is $sump2";;
92) echo "At $p2 new position $sump2 snake found" 
echo -ne '\a' #beep 
timeout 1s ping clear #Wait for 5 seconds
sump2=51
echo " $p2  position is $sump2";;
83)echo "At $p2 new position $sump2 snake found" 
echo -ne '\a' #beep 
timeout 1s ping clear #Wait for 5 seconds
sump2=19
echo " $p2 new position is $sump2";;
60) echo "At $p2 position $sump2 snake found" 
echo -ne '\a' #beep 
timeout 1s ping clear #Wait for 5 seconds
sump2=33
echo " $p2 new position is $sump2";;
59)echo "At $p2 position $sump2 snake found" 
echo -ne '\a' #beep 
timeout 1s ping clear #Wait for 5 seconds
sump2=17
echo " $p2 new position is $sump2";;
49)echo "At $p2 new position $sump2 snake found" 
echo -ne '\a' #beep 
timeout 1s ping clear #Wait for 5 seconds
sump2=9
echo " $p2 new position is $sump2";;
46)echo "At $p2 new position $sump2 snake found" 
echo -ne '\a' #beep 
timeout 1s ping clear #Wait for 5 seconds
sump2=5
echo " $p2 new position is $sump2";;

8)echo "At $p2 position $sump2 ladder found"
echo -ne '\a' #beep 
timeout 1s ping clear #Wait for 5 seconds
sump2=26
echo " $p2 new position is $sump2";;
21)echo "At $p2 position $sump2 ladder found" 
echo -ne '\a' #beep 
timeout 1s ping clear #Wait for 5 seconds
sump2=82
echo " $p2 new position is $sump2";;
43)echo "At $p2 position $sump2 ladder found" 
echo -ne '\a' #beep 
timeout 1s ping clear #Wait for 5 seconds
sump2=77
echo " $p2 new position is $sump2";;
58)echo "At $p2 position $sump2 ladder found" 
echo -ne '\a' #beep 
timeout 1s ping clear #Wait for 5 seconds
sump2=91
echo " $p2 new position is $sump2";;
62)echo "At $p2 position $sump2 ladder found" 
echo -ne '\a' #beep 
timeout 1s ping clear #Wait for 5 seconds
sump2=96
echo " $p2 new position is $sump2";;
66)echo "At $p2 position $sump2 ladder found" 
echo -ne '\a' #beep 
timeout 1s ping clear #Wait for 5 seconds
sump2=87
echo " $p2 new position is $sump2";;
89) echo "At $p2 position $sump2 ladder found" 
echo -ne '\a' #beep 
timeout 1s ping clear #Wait for 5 seconds
sump2=100
echo " $p2 new position is $sump2";;
*)echo "$p2 at $sump2 position"
echo -ne '\a' #beep 
#timeout 1s ping clear #Wait for 5 seconds
esac
else
echo "already at  $sump2 position "
echo "Your score reaches above 100 so wait for the next turn "
fi
fi
display
win
timeout 3s ping clear #Wait for 5 seconds
clear
echo "******************* $p1 turn now***************** "
echo "Enter any key to roll the dice player 1"
                read charY
lastpos=1
player1
}

position()
{
echo "                     Game instructions                   "
echo "*********************************************************"
echo " snake at position       |         ladder at position    "
echo "*********************************************************"
echo " from 98 to 28           |        from 8 to 26           "
echo " from 92 to 51           |        from 21 to 82          "
echo " from 83 to 19           |        from 43 to 77          "
echo " from 60 to 33           |        from 58 to 91          "
echo " from 59 to 17           |        from 62 to 96          "
echo " from 49 to 9            |        from 66 to 87          "
echo " from 46 to 5            |        from 89 to 100         "
echo "*********************************************************"
}
Instructions () { #how to play game
echo "this is snake and ladder game "
echo "First of fall even two player’s names"
echo "then random toss performed for first player turn"
echo "Be careful from snake if you fall on snake you will devalued"
echo "if you on point of ladder then your valued updated"
echo "the following position has snake and ladder "
}

matrix()
{
echo "                                                        "
echo "                     Snake and ladder Game              "
echo "                                                        "
row=10
col=10
count=1
for ((i=0;i<row;i++))
   do
       for ((j=0;j<col;j++))
       do
       arrboard[$i,$j]=$count
echo -ne "${arrboard[${i},${j}]}  |"
((count++))
done
echo "                              -------------------------------------------------"
 done
}

#welcomescreen() {
#dialog --backtitle "Snake and Ladder Game" \
#--title "Welcome to the Game" \
#--msgbox "Player 1: $p1name \nPlayer 2: $p2name" 10 30
#}

MainMenu(){
#welcomescreen
echo "---------------------Welcome to Catch Game's Main Menu-------------------"
    echo "Enter 1 for know How to play."
    echo "Enter 2 for play Game."
    echo "Enter 3 for Quit game"
    echo "Enter Your Choice"
    read number
    if [ $number -le 3 ]
    then
        if [ $number -gt 0 ]
        then
            cond1=1
        fi
    else
        cond1=0
    fi
    while [ $cond1 -ne 0 ]
    do
        case $number in
	1)
		#timeout 2s ping clear #Wait for 2 seconds
		clear
		Instructions #instruction function calling
                 timeout 2s ping clear #Wait for 2 seconds
 position # function calling position
		echo "Enter any key if ou want to continue"
		read charY
		#timeout 2s ping clear #Wait for 2 seconds
		clear
		MainMenu
	;;
	2)
		echo "Play Game function"
		echo "Game Start "
sump1=0
sump2=0

                matrix  #calling function
                toss  #calling
    		 if [ $lastpos == 1 ]
      		then
	          player1 #calling
		else
		player2 #calling
		fi
		timeout 3s ping clear
                 clear
#MainMenu
	;;
	
	3)
	        timeout 2s ping clear #Wait for 2 seconds
		clear
echo "Thanks for Playing game. Hope You enjoy playing it :)"
		exit 0
	;;
	*)
		echo "you entered Invalid day"
	;;
        esac
    done
}

MainMenu
