all: README.md

make_date=`date +%x` 
make_time = $(date +%X)
guess_lines = $(cat guessinggame.sh | wc -l)

README.md: guessinggame.sh
	echo "# Coursera Week 4: Peer-reviewed Assignment" > README.md
	echo "Make was ran at `date +%X` on `date +%x`." >> README.md
	echo "The file 'guessinggame.sh' has `cat guessinggame.sh | wc -l` lines in it." >> README.md
