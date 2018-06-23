all:README.md fake
	source guessinggame.sh
	

README.md: fake_target
	
	touch README.md
	echo "project title : \nguessinggame">>README.md
	echo "number of lines is: ">>README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	echo "date and time :">> README.md
	date '+%d/%m/%Y %H:%M:%S'>>README.md
	

fake_target:
	touch README.md
	rm README.md