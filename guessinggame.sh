#!/bin/bash

function ask {
	echo "Please enter the number of files in the current directory:"
	read count
    files=$(ls -1 | wc -l)
}

ask

while [[ $count -ne $files ]]
do
	if [[ $count -lt $files ]] 
	then
		echo "Too low."
	else
		echo "Too high."
	fi
	ask
done

echo "Correct answer"
