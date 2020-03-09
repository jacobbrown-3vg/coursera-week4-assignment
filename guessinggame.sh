#File: guessinggame.sh

echo "How many files are in $(pwd)?"

read response

echo "You guessed $response..."

files=$(ls | wc -l)

while [[ $response -ne $files ]]; do
	if [[ $response -lt $files ]]; then
		echo "That was too low. Please try again."
	else 
		echo "That was too high. Please try again."
	fi
	echo ""
	echo "How many files are in the current folder?"
	read response
	echo "You guessed $response..."
done

echo "That was correct!!" 
