#This is simple game programmed by bash script

export PATH=~$PWD:$PATH

function game {

numberofFiles=$(ls | wc -l)
loop=1
echo "Guess the number of files in the current directory"
while [[ $loop -eq 1 ]]
do

read -p "Your guess :" guess
if [[ $guess =~ [^0-9] ]]
then echo "The value you have entered is not a VALID number"
elif [[ $guess -eq $numberofFiles ]] 
then
echo "Bravo! You have guessed exact number of files"
loop=0
elif [[ $guess -gt $numberofFiles ]]
then
echo "Sorry but you have guessed too HIGH, try again"
else
echo "Sorry but you have guessed too LOW, try again"
fi

done
}

game