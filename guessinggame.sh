#This is simple game programmed by bash script

numberofFiles=$(ls -a | wc -l)
loop=1
echo "Guess the number of files(inc. hidden) in the current directory"
while [[ $loop -eq 1 ]]
do

read -p "Your guess :" guess

if [[ $guess -eq $numberofFiles ]] 
then
echo "Bravo! You have guessed exact number of files"
loop=0
elif [[ $guess -gt $numberofFiles ]]
then
echo "Sorry but you have guessed too high, try again"
else
echo "Sorry but you have guessed too low, try again"
fi

done
