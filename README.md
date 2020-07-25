
### Print Working Directory
```bash
$ pwd
```
### show the files in the working directory
```bash
$ ls
```

### cd
Change directory to home 
```bash
$ cd ~
```
### Shows the current authenticated user 
```bash
$ whoami
```

### echo
Prints..... 
```bash
$ echo "Nelan 56837 6342"
```
### alias
Map a command to another command
```bash
alias home='cd ~'
```
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

### print working directory
```bash
pwd
```

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

### remove a filled directory but keep the subdirectories
```bash
rm -r
```

### remove a filled directory and the subdirectories
```bash
rm -rf ⇒ 
```
### install the tree command within the terminal
```bash
brew install tree 
```

### create a file
```bash
touch [filename]
```
### Copy
cp *.extension examples ⇒ copy all the files with the specified extension ino the examples directory
```bash
cp *.txt pathtothedirectory
```

### Run a Recursive search in a directory for a specific string 
```bash
grep -r "END" examples
```
The above command will run a recursive search in my examples directory for any file that has the word END in it

### Display all the commands committed as history
```bash
history | grep "grep" 
```

### To run a command in history
```bash
![historyNumber]
```
