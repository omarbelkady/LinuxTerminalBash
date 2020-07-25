
### Print Working Directory
pwd

### ls
show the files in the working directory 

### cd
Change directory to home e.g. cd ~

### whoami
Shows the current authenticated user 

### echo
Prints..... echo "Nelan 56837 6342"

### alias
Map a command to another command
alias home='cd ~'

### alt+f
go forward between one word to the next word in your command

### alt+b
go backward between one word to the next word in your command

### ctrl+c
cancels current command

### ctrl+d
creates a 2nd shell side by side

### cmd+shift+d
creates a 2nd shell below not to the side

### tab
autocomplete

### date
displays current date

### cal
displays calendar

### cal 2020
displays calendar for the 2020 year

### man 
displays manual for all the possible commands you can run

### pwd
print working directory

### go back 1 directory
```bash
cd .. 
```

### go back 2 directory
```bash
cd ../.. 
```

### execute the file
```bash
./
```

### create a directory
```bash
mkdir
```

### rm -r
remove a filled directory but keep the subdirectories
rm -rf ⇒ remove a filled directory and the subdirectories
brew install tree ⇒ install the tree command within the terminal
touch ⇒ create a file
cat query.sql ⇒ open the query.sql file
head query.sql ⇒ see the first 10 lines of text of the query.sql file
tail query.sql ⇒ see the last 10 lines of text of the query.sql file
head tail query.sql ⇒ see the full file
cp query.sql query-copy.sql ⇒ copy the contents of the query.sql file into the query-copy.sql and keep the query.sql file intact
cp *.extension examples ⇒ copy all the files with the specified extension ino the examples directory
tree examples ⇒ shows the structure of the examples directory
grep -r "END" examples ⇒ run a recursive search in my examples directory for any file that has the word END in it
history | grep "grep" ⇒ display all the actions I committed with the grep command
curl -0 httpLink.html ⇒ transfer data from or to a server from the specified protocol
