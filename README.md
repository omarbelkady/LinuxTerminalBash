#### Vim
```
$ v ==> Copy the character
$ V ==> Copy the entire line
Move the cursor to the end where you want to cut
$ d ==> Cuts till that point
$ y ==> Copy
$ P ==> Paste before the cursor
$ p ==> Paste after the cursor
$ :set number ==> display line number
$ :w ==> write to the file
$ i ==> toggle insert/command mode
```

### show the files in the working directory
```bash
$ ls
```
### Stop an existing process
```bash
kill
```

### Change directory to home 
```bash
$ cd ~
```

### create a directory
```bash
$ mkdir
```

### remove a filled directory but keep the subdirectories
```bash
$ rm -r
```

### remove a filled directory and the subdirectories
```bash
$ rm -rf
```

### print working directory
```bash
$ pwd
```

### return to the previous directory
```bash
$ cd - 
```

### go up 1 directory
```bash
$ cd .. 
```

### go back 2 directories
```bash
$ cd ../.. 
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

### displays current date
```bash
$ date
```

### displays calendar
```bash
$ cal
```

###  displays calendar for the 2020 year
```bash
$ cal 2020
```

### displays manual for all the possible commands you can run
```bash
$ man
```

### execute the file
```bash
$ ./
```


### install the tree command within the terminal
```bash
$ brew install tree 
```

### create a file
```bash
$ touch [filename]
```
### Copy
cp *.extension examples ⇒ copy all the files with the specified extension ino the examples directory
```bash
$ cp *.txt pathtothedirectory
```

### Run a Recursive search in a directory for a specific string 
```bash
$ grep -r "END" examples
```
The above command will run a recursive search in my examples directory for any file that has the word END in it

### Display all the commands committed as history
```bash
$ history | grep "grep" 
```

### To run a command in history
```bash
$ ![historyNumber]
```

### Change the file permission or as written change access modes
```bash
$ chmod
```

### Display all the ip and mac addresses within your network in a table structure
```bash
$ arp -a
```

### How to find your mac address
```bash
$ ifconfig
```
### Display Your mac address
```bash
$ macchanger -s eth0
```

### Random Mac Address Setter
```bash
$ macchanger -r eth0
```

### Sorted order of your mac address
```bash
$ ifconfig | grep ether
```

### How to know which command you can run on the specific file
```bash
$ cat
```

### Reboot From the Terminal
```bash
$ reboot
```

### Kill all Subprocesses
```bash
$ airmon-ng check kill
```

## Git

### How To Clone A directory
```git
git clone <url> 
``` 
### Create New Branch LOCALLY
```git
git checkout -b <nameOfNewBranch>
```

### Get your local branch meaning what you have in your machine to agree with your remote branch(branch on GitHub) usually master IF YOU ARE PM
```git
git push origin <nameOfBranch>
```

### Goto a different branch
```git
git checkout <nameofBranch>
```

### Delete the remote branch(branch on GH)
```git
git push origin :nameOfBranch
```

### Delete the local branch(branch on your local machine aka computer)
```git
git branch -d <nameOfBranch>
```


### Steps To Create A Create Project

#### 1- Initialize An Empty Repository
```git
git init
```
#### 2- Add all the files to be staged
```git
git add .
```
#### 3- Commit the files use -m to be respectful to your peers to log what you are doing
```git
git commit
```


### Branching and Merging

#### Show a list of all the branches a * next to a branch means the branch you are on
```git
git branch
```

#### IF you are in a group ALWAYS PULL THEN PUSH. In this case I am pulling Everything from the repo Linux
```git
git pull . Linux
```

#### If you are working on a feature and your friend is working on another feature and your pm tells you we need both your work now in the features repository
```git
git merge features
```

#### Rename a branch
```git
git branch -m <OLD> <NEW>
```

#### To rename say, for example omar which I am currently working on
```git
git branch -m ramo
```


#### How To Delete Project
##### 1- Delete The Local branch
```git
git branch -d <nameofBranch>
```

##### 2- Delete The Remote branch
```git
$ git push origin :<nameofBranch>
```

##### 3- Sync your local changes with your remote changes
```git
$ git remote prune <nameofBranch>
```


### Comparing Revisions
#### Show the difference between master branch(locally) and master branch(remote-GitHub)
```git
$ git diff origin..master
```

#### Show the difference between work that has been committed and not been committed
```bash
$ git diff --stat HEAD
```
