fn=$(ls | wc -l)

function guessf {
	while [[ $fn -ne $gf ]]
	do
	add=$((add+1))
	echo "attempt number: $add"
	read gf
	if [[ $gf -eq $fn ]]
	then
		echo "Great Job! Congrats"
	else
		if [[ $gf -gt $fn ]]
		then
			echo "Your numer is too high ! Try again."
		else
			echo "Your numer is too low ! Try again."
		fi
	fi
	done
}
echo "Let play a game"
echo "There are a specific number of files in the directory"
echo "So, try to guess how many files are in it, good luck!"
echo "Enter..."
guessf
