#!bin/bash
function myproject(){
	cd ~
	git init
	git remote add origin git@github.com:omarbelkady/$1.git
	git add .
	git commit -m "First commit in the repo"
	git push -u origin master
}
	
