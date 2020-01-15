# Makefile for the assignment

.DEFAULT_GOAL:=README.md

README.md: guessinggame.sh
	echo "## Welcome to GUESSING GAME\n\n" > README.md
	echo "**Runnig Date and Time of Makefile : ** _$(date)_" >> README.md 
	echo "**The number of lines of guessinggame.sh file : ** _$(cat guessinggame.sh | wc  -l)_ " >> README.md
	
