### HOW TO DEPLOY LIVE SERVER ON MY MACHINE
[![Screenshot-2020-08-03-at-3-47-03-AM.png](https://i.postimg.cc/0jqPVgdN/Screenshot-2020-08-03-at-3-47-03-AM.png)](https://postimg.cc/KkQ6YHWX)
[![Screenshot-2020-08-03-at-3-47-17-AM.png](https://i.postimg.cc/G2FZh4Gc/Screenshot-2020-08-03-at-3-47-17-AM.png)](https://postimg.cc/S2KZgNg5)
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
```console
root@omarbelkady:~$ ls
```

### Stop an existing process
```console
root@omarbelkady:~$ kill
```

### create a directory
```console
root@omarbelkady:~$ mkdir <nameOfDir>
```

### remove a filled directory but keep the subdirectories
```console
root@omarbelkady:~$ rm -r <nameOfDir>
```

### remove a filled directory and the subdirectories
```console
root@omarbelkady:~$ rm -rf <nameOfDir>
```

### print working directory
```console
root@omarbelkady:~$ pwd
```

### Change directory to home 
```console
root@omarbelkady:~$ cd ~
```

### Change directory to root
```bash
root@omarbelkady: ~$ cd /
```

### go up 1 directory
```console
root@omarbelkady:~$ cd .. 
```

### go back 2 directories
```console
root@omarbelkady:~$ cd ../.. 
```

### Shows the current authenticated user 
```bash
root@omarbelkady:~$ whoami
```

### echo
Prints..... 
```bash
~$ echo "Nelan 56837 6342"
```

### alias
Map a command to another command
```bash
$ alias home='cd ~'
$ alias ll='ls -al'
$ alias root='cd /'
```

### go forward between one word to the next word in your command
alt+f

### go backward between one word to the next word in your command
alt+b

### cancels current command
ctrl+c

### creates a 2nd shell side by side
ctrl+d

### creates a 2nd shell below not to the side
cmd+shift+d

### autocomplete
tab

### displays current date
```bash
root@omarbelkady:~$ date
```

### displays calendar
```bash
root@omarbelkady:~$ cal
```

###  displays calendar for the 2020 year
```bash
root@omarbelkady:~$ cal 2020
```

### displays manual for all the possible commands you can run
```bash
root@omarbelkady:~$ man
```

### execute the file
```bash
root@omarbelkady:~$ ./
```


### install the tree command within the terminal- THIS IS A MAC EXCLUSIVE
```bash
root@omarbelkady:~$ brew install tree 
```

### create a file
```bash
root@omarbelkady:~$ touch [filename]
```

### Copy
```bash
root@omarbelkady:~$ cp *.txt [pathtothedirectory]
```

### copy all the files with the specified extension ino the examples directory
```bash
root@omarbelkady:~$ cp *.extension examples
```

### Example: I am copying all the executable(.exe) files within my working directory into the examples directory
```bash
root@omarbelkady:~$ cp *.exe examples
```

### Run a Recursive search in a directory for a specific string 
```bash
root@omarbelkady:~$ grep -r "END" examples
```

The above command will run a recursive search in my examples directory for any file that has the word END in it

### Display all the commands committed as history
```bash
root@omarbelkady:~$ history | grep "grep" 
```

### To run a command in history
```bash
root@omarbelkady:~$ ![historyNumber]
```

### Change the file permission or as written change access modes
```bash
root@omarbelkady:~$ chmod [permission] [fileName]
```

### Display all the ip and mac addresses within your network in a table structure
```bash
root@omarbelkady:~$ arp -a
```

### How to find your mac address
```bash
root@omarbelkady:~$ ifconfig
```

### Display Your mac address
```bash
root@omarbelkady:~$ macchanger -s eth0
```

### Random Mac Address Setter
```bash
root@omarbelkady:~$ macchanger -r eth0
```

### Sorted order of your mac address
```console
root@omarbelkady:~$ ifconfig | grep ether
```

### How to know which command you can run on the specific file
```console
root@omarbelkady:~$ cat [nameOfFile]
```

### Reboot From the Terminal
```console
root@omarbelkady:~$ reboot
```

### Kill all Subprocesses
```console
root@omarbelkady:~$ airmon-ng check kill
```

## Git

### How To Clone A directory
```bash
git clone <url> 
``` 

## Continuous Workflow

### 1- Get the latest version of your project
```bash
git pull origin <nameOfBranch>
```

### Create New Branch LOCALLY 2)-- SKIP THIS STEP IF BRANCH EXISTS
```bash
git checkout -b <nameOfNewBranch>
```


### Get your local branch meaning what you have in your machine to agree with your remote branch(branch on GitHub) usually master IF YOU ARE PM
```bash
git push origin <nameOfBranch>
```

### Goto a different branch
```bash
git checkout <nameofBranch>
```

### Delete the local branch(branch on your local machine aka computer)
```bash
git branch -d <nameOfBranch>
```


### Steps To Create A New Project

#### 1- Initialize An Empty Repository
```bash
git init
```
#### 2- Add all the files to be staged
```bash
git add .
```
#### 3- Commit the files use -m to be respectful to your peers to log what you are doing
```bash
git commit -m "A overall description of what you just modified"
```

#### 4- Do not forget to link your local repository to the remote repository
```bash
git remote add origin <urlOfRepo>
```

#### 5- Push to the repository
```bash
git push origin <NameOfBranch>
```

### Branching and Merging

#### Show a list of all the branches a * next to a branch means the branch you are on
```bash
git branch
```

#### IF you are in a group ALWAYS PULL THEN PUSH. In this case I am pulling from the remote Branch Everything from the repo Linux
```bash
git pull origin . Linux
```

#### If you are working on a feature and your friend is working on another feature and your pm tells you we need both your work now in the features repository
```bash
git merge features
```

#### Rename a branch
```bash
$ git branch -m <OLD> <NEW>
```

#### To rename say, for example omar which I am currently working on
```bash
$ git branch -m ramo
```


#### How To Delete Project
##### 1- Delete The Local branch
```bash
$ git branch -d <nameofBranch>
```

##### 2- Delete The Remote branch
```bash
$ git push origin :<nameofBranch>
```

##### 3- Sync your local changes with your remote changes
```bash
$ git pull origin master
```


### Comparing Revisions
#### Show the difference between master branch(locally) and master branch(remote-GitHub)
```bash
$ git diff origin..master
```

#### Show the difference between work that has been committed and not been committed
```bash
$ git diff --stat HEAD
```

### Privellege Escalation
Step 1: launch Apache web server
~~~
# service apache2 status
~~~
```bash
root@omarbelkady:~$ nmap -sT 192.168.1.27 4444
```

Step 2: Check if port 4444 opened
```bash
root@omarbelkady:~$ netstat -an | find "4444"
```
Step 3: Check if port 4444 opened
```bash
root@omarbelkady:~$ nmap -sT 192.168.1.27
```

Step 4: Gain Access

```bash
root@omarbelkady:~$ nc 192.168.1.27 4444
```

Step 5: List Directories
```bash
root@omarbelkady:~$ dir
```

Step 6: List the system details
```bash
root@omarbelkady:~$ systeminfo
```

Step 7: Find the hostname
```bash
root@omarbelkady:~$ hostname
```

Step 8: Find the users in the environment
```bash
root@omarbelkady:~$ net users
```

Step 8 a: Find the ip address of everyone
```bash
root@omarbelkady:~$ ipconfig/all
```

Step 9: Detect systems in the environment
```bash
root@omarbelkady:~$ route print
```

Step 10: Search for vulnerable devices
```bash
root@omarbelkady:~$ netstat -ano
```

Step 11: Search for open ports that are enabled
```bash
root@omarbelkady:~$ netsh firewall show state
```

## Metasploit
### STEP1
set RHOSTS # 

### STEP 2
set RPORT #

### STEP 3: Root User
set USERNAME root

### STEP 4: start scan
run

### STEP 5: exploit
exploit
