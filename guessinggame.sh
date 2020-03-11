#File: guessinggame.sh

function getguess {
	echo "How many files are in $(pwd)?"

	read response
	while [[ ! $response =~ ^[0-9]+$ ]]; do
		echo "Response invalid. Please enter a number"
		read response
	done

	echo "You guessed $response..."
}

getguess

files=$(ls -A | wc -l)

while [[ $response -ne $files ]]; do
	if [[ $response -lt $files ]]; then
		echo "That was too low. Please try again."
	else 
		echo "That was too high. Please try again."
	fi
	getguess
done

echo "That was correct!!" 
