# Linux Terminology And Info

## File Structure(Level 1: / aka Root Directory)

├── /bin    => User Command Binaries or essential User Commands

├── /boot   => User's boot loader files

├── /dev    => Device Files

├── /etc    => System Configuration files

├── /home   => User's home directory

├── /lib    => User's Shared/System Libraries

├── /media  => User's removable media

├── /mnt    => The mounted File System Files or Mount Directory

├── /opt    => Add-on Application Software Package or Optional Software applications

├── /proc   => Process Information

├── /root   => Super User's Home Directory(For 63526 its the 429 dir) 

├── /sbin   => System Binaries

├── /srv    => User's service Data

├── /tmp    => Temporary Files

├── /usr    => User Programs

├── /var    => Variable Files

### 7 Layers in IT of the OSI Model[Super Important]:

- Physical Layer[L1]: Data Unit Layer is in binary bits(1/0). Primary resp of this layer is to send&receive bitch
    - layer specifications:
        - electrical
        - mechanical
        - procedural
        - functional
    - End User Layer
    - Uses: Coax, Fiber, Wireless, Hubs, Repeaters

- Data Link Layer[Layer 2]: Data unit at this layer is the frame. It is attached to the src&dest address i.e. MAC address.
    - Its size is 48bits/6bytes
    - Represented in 12digits hexadec
    - Frames
    - Uses: Ethernet, PPP, Switch, Bridge

- Network Layer[Layer 3]: Data unit at this layer are Packets. This is primarily responsible:

  - for managing device addressing
  - tracking location of devices on the netowrk
    - determines the best way to move data around i.e. move traffic between devices which aren't locally attached
    - Routers are precisely mentioned in this layer and provide us with routing services within the inner network
    - Uses: IP, ICMP, IPSec, IGMP

- Transport Layer(aka E2E Layer)[Layer 4]: Data unit at this layer is a Segment.

  - Provides end to end delivery of every single individual packet
  - Uses: TCP, UDP

- Session Layer[Layer 5]: In charge of setting up, managing and tearing down session between the presentation layer objects.  

  - provides dialog control in between the devices or nodes. It syncs communication between sys and makes sure that the communication is organized by offering three unique modes: simplex, half duplex and full duplex
  - Uses: API's, Sockets, WinSock

- Presentation Layer[Layer 6]: In charge of presenting the data to the application layer and formats the code

  - Layer is in other words, a translator and provides coding and conversation functionality
  - A  good data transfer technique is to be able to adapt the data into a standard format before transmission
  - Uses: SSL, SSH, IMAP, FTP, MPEG, JPEG

- Application Layer[Layer 7]: marks the location where users usually talk to the communication. Only in need when you need to access the netowrk soon, e.g. IE

- Uses: HTTP, FTP, IRC, SSH, DNS

### HTTP Codes

- 1xx
- 2xx
- 3xx
- 4xx
- 5xx


### Ports

### Description

| Port | Service |  Protocol
| ----------- | ----------- | ----------- |
| 20/21 | FTP | TCP |
| 22 | SSH | TCP |
| 23 | Telnet | TCP |
| 25 | SMTP | TCP |
| 53 | DNS | TCP/UDP |
| 69 | TFTP | UDP |
| 80 | HTTP | TCP |
| 110 | POP3 | TCP |
| 135 | RPC | TCP |
| 161/162 | SNMP | UDP |
| 1433/1434 | MSSQL | UDP |


### STEP 1: SPIN A LIVE SERVER

```bash
root@omarbelkady:~$ http-server ./NAMEOFDIR -p PORTNUM
```

### STEP 2A: Long List of all the processes running on your local machine(List open files: lsof)

```bash
root@omarbelkady:~$ lsof -i -ll
```

### STEP 2A: Long List of all the processes running on your local machine if you use npm

```bash
root@omarbelkady:~$ ps -e|grep node
```

### STEP 3: Make sure to kill the process after use to be able to use it again

```bash
root@omarbelkady:~$ kill -9 -PROCESSID
```

### STEP 3A: If multiple processes are running instead of manually doing it one by one you can kill the processes in one line

```bash
root@omarbelkady: ~$ kill -9 -PROCESSID1 -PROCESSID2 -PROCESSIDETC.
```

### Know which process does file x run

```bash
root@omarbelkady: ~$ lsof ~/createthis.sh
```


### Know which process does user XYZ have open

```bash
lsof -u XYZ
```

### Know which process is listening on port 429

```bash
lsof -i 429
```

### Know which process is using protocol abc in my case TCP

```bash
lsof -i tcp
```

### HOW TO DEPLOY LIVE SERVER ON MY MACHINE

[![Screenshot-2020-08-03-at-3-47-03-AM.png](https://i.postimg.cc/0jqPVgdN/Screenshot-2020-08-03-at-3-47-03-AM.png)](https://postimg.cc/KkQ6YHWX)
[![Screenshot-2020-08-03-at-3-47-17-AM.png](https://i.postimg.cc/G2FZh4Gc/Screenshot-2020-08-03-at-3-47-17-AM.png)](https://postimg.cc/S2KZgNg5)

#### Vim

- v ==> Copy the character
- V ==> Copy the entire line
- Move the cursor to the end where you want to cut
- d ==> Cuts till that point
- y ==> Copy
- P ==> Paste before the cursor
- p ==> Paste after the cursor
- :set number ==> display line number
- :w ==> write to the file
- i ==> toggle insert/command mode
- /abc ==> Searching for the abc
- : ===> followed the by the first letter of the command and press tab to cycle through which command you want


### Show the files in the working directory

```bash
root@omarbelkady:~$ ls
```

### Show all the files in the working directory including the hidden files

```bash
root@omarbelkady:~$ ls -la
```

### Show all the files in the working directory with their permissions in a long list format

```bash
root@omarbelkady:~$ ls -ll
```

### Long list format in sorted order by date:time of all your files,dirs and their Permissions

```bash
root@omarbelkady: ~$ ls -ll -t
```

### Stop an existing process

```bash
root@omarbelkady:~$ kill
```

### Kill All Node Processes

```bash
root@omarbelkady:~$ pkill -9 node
```

### Kill A Process By Name

```bash
root@omarbelkady:~$ killall
```

### Could not get lock error fix STEPS

```bash
root@omarbelkady:~$ ps aux | grep -i apt
root@omarbelkady:~$ kill -9 processid
```

### List All Active Jobs

```bash
root@omarbelkady:~$ jobs
```

### Freeze the terminal for a specific period of time

```bash
root@omarbelkady:~$ sleep [timeInSeconds]
```

### Edit easily a long command you just wrote instead of pressing up arrow

```bash
root@omarbelkady:~$ fc
```

### Create a directory

```bash
root@omarbelkady:~$ mkdir <nameOfDir>
```

### Delete folders recursively

```bash
root@omarbelkady:~$ rm -r <nameOfDir>
```

### Force Remove A Filled Directory

```bash
root@omarbelkady:~$ rm -rf <nameOfDir>
```

### Remove a node_modules directory and its subdirectories in the background

```bash
root@omarbelkady:~$ rm -rf node_modules &
```

### Removes an empty directory

```bash
root@omarbelkady:~$ rmdir <dirname>
```

### Find out how much memory a directory/file takes

```bash
root@omarbelkady:~$ du <nameOfDir/fileName>
```

### Move a directory with its contents to another location

```bash
root@omarbelkady:~$ mv -v <ORIGINALPATH> <DESTINATIONPATH>
```

### Connect to a remote machine using ssh protocol
```bash
root@omarbelkady: ~$ ssh 192.168.1.11
```

### Connect to a remote(away) machine using ssh protocol given you know ip  and username
```bash
root@omarbelkady: ~$ ssh omar@192.168.1.11
```


### View contents of a zip file without extracting it

```bash
unzip -l <fileToextract.zip>
```

### Spits Out The Full Path in the Terminal

```bash
root@omarbelkady:~$ pwd
```

### Change directory to home

```bash
root@omarbelkady:~$ cd ~
```

### List all the packages installed navigate to usr and change your directory to the bin folder and list all the files

```bash
root@omarbelkady: ~$ cd ~
root@omarbelkady: ~$ cd ..
root@omarbelkady: ~$ cd bin/
root@omarbelkady: ~$ ls
```

### Give root privelleges to for current user

```bash
root@omarbelkady: ~$ sudo chmod 777 /
```

### Perform a task that requires administrative privelleges

```bash
root@omarbelkady: ~$ sudo chmod 777 /
```

### Switch to different user or super user

```bash
root@omarbelkady:~$ su (yourusernamegoeshere)
```

### Change directory to root

```bash
root@omarbelkady: ~$ cd /
```

### Go up 1 directory

```bash
root@omarbelkady:~$ cd .. 
```

### Go back 2 directories

```bash
root@omarbelkady:~$ cd ../.. 
```

### Shows the current authenticated user

```bash
root@omarbelkady:~$ whoami
```

### End the current bash session or terminal

```bash
root@omarbelkady:~$ exit
```


### Echo: prints

```bash
root@omarbelkady:~$ echo "Nelan 56837 6342"
```

### Aliasing

- Map a command to another command

```bash
root@omarbelkady:~$ alias home='cd ~'
root@omarbelkady:~$ alias ll='ls -al'
root@omarbelkady:~$ alias root='cd /'
```

### Sed: replace text within a file

```bash
root@omarbelkady:~$ sed s/bernard/dj/g bestprof.txt
```

### Sed: print the 32nd line

```bash
root@omarbelkady:~$ sed -n 32 p
```

### Sed: Print lines 37532-42932

```bash
root@omarbelkady:~$ sed -n 37532,42932p
```

### Sed: Append FB after lines containing 765anco

```bash
root@omarbelkady:~$ sed '/765anco/a FB'
```

### Sed: Delete the 429th line

```bash
root@omarbelkady:~$ sed 429d
```

### Sed: Delete lines matching brnrdfb

```bash
root@omarbelkady:~$ sed /brnrdfb/d
```


### Go forward between one word to the next word in your command

```
alt+f
```

### Go backward between one word to the next word in your command

```
alt+b
```

### Cancels current command

```
ctrl+c
```

### Creates a 2nd shell side by side

```
ctrl+d
```


### Creates a 2nd shell below not to the side

```
cmd+shift+d
```

### Autocomplete

```
tab
```

### Displays current date

```bash
root@omarbelkady:~$ date
```

### Displays calendar

```bash
root@omarbelkady:~$ cal
```

### Displays calendar for the 2020 year

```bash
root@omarbelkady:~$ cal 2020
```

### Displays A manual for all the possible commands you can run

```bash
root@omarbelkady:~$ man
```

### Display a brief description of a certain command

```bash
root@omarbelkady:~$ whatis <commandname>
```

### Execute the file

```bash
root@omarbelkady:~$ ./
```

### Find A file

```bash
root@omarbelkady:~$ find /full/path/here/ "PatternOrDIRNAME" 
```

### Find A File With the given

```bash
root@omarbelkady:~$ find /dir/to/searchin -name "file-to-search"
```

### Find in this directory and all subdirectories any file whose name has a c extension(fav extension 63526) and list them

```bash
root@omarbelkady:~$ find . -name "*.c" -type f -ls
```

### install the tree command within the terminal- THIS IS A MAC EXCLUSIVE

```bash
root@omarbelkady:~$ brew install tree 
```

### Create a file

```bash
root@omarbelkady:~$ touch [filename]
```

### Open a file in the text editor

```bash
root@omarbelkady:~$ nano [filename]
```

### Open a script with VS Code

```bash
root@omarbelkady:~$ code [filename]
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

### Recursively search for all text files for a given string of text with the .txt extension

```bash
root@omarbelkady:~$ grep "63526 47 2 2-56837" ~/*.txt
```

### Recursively search for all text files for 2 given strings or more

```bash
root@omarbelkady:~$ egrep -w -R 'assembly|2-56837|Pascal|727225' 
```

### Recursively search for all text files for 2 given strings or more in the NodeJS directory

```bash
root@omarbelkady:~$ egrep -w -R 'assembly|2-56837|Pascal|727225' ~/NodeJS
```

### Run a Recursive search in a directory for a specific string

```bash
root@omarbelkady:~$ grep -r "END" examples
```

The above command will run a recursive search in my examples directory for any file that has the word END in it

### Display all the grep commands where I searched for the string of text grep in a file committed in history

```bash
root@omarbelkady:~$ history | grep "grep" 
```

### Find The Difference Between Two Files

```bash
root@omarbelkady:~$ diff fort72632.txt 7olan2632.txt
```

### Remove duplicate lines in a file and output it to the screen

```bash
root@omarbelkady:~$ uniq polan2632.txt
```

### To run a command in history

```bash
root@omarbelkady:~$ ![historyNumber]
```

#### Permissions Code

- 0: No Permissions
- 1: Execute
- 2: Write
- 3: Execute And Write
- 4: Read
- 5: Read & Execute
- 6: Read & Write
- 7: Read & Write & Execute


### Change the file permission or as written change access modes

```bash
root@omarbelkady:~$ chmod [permission] [fileName]
```

### Add A user

```bash
root@omarbelkady:~$ useradd joey
```

### chmod Usage

```bash
root@omarbelkady:~$ chmod [user][group][others] [fileName]
```

### chmod flags

- u: user/owner
- g: group
- o: other
- a: all

### chmod operators

- +: add a permission
- -: remove a permission
- =: set the permission and override the ones set earlier

### Display all the ip and mac addresses within your network in a table structure

```bash
root@omarbelkady:~$ arp -a
```

### Configure A Network Interface

```bash
root@omarbelkady:~$ ifconfig
```

### Stop A Network Interface

```bash
root@omarbelkady:~$ ifdown
```

### Start A Network Interface

```bash
root@omarbelkady:~$ ifup
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

```bash
root@omarbelkady:~$ ifconfig | grep ether
```

### Disable A Network Interface

```bash
root@omarbelkady:~$ ifconfig eth0 down
```

### Enable Promiscuous Mode Within A Network Interface

```bash
root@omarbelkady:~$ ifconfig eth0 promisc
```

### Disable Promiscuous Mode Within A Network Interface

```bash
root@omarbelkady:~$ ifconfig eth0 -promisc
```

### List the contents of a file as standard output

```bash
root@omarbelkady:~$ cat [nameOfFile]
```

### Creates and Extract gzip files

```bash
root@omarbelkady:~$ gzip -d [nameOfFile]
```

### To open and unzip a given zip file

```bash
root@omarbelkady:~$ unzip [nameOfFile].zip
```

### Reboot From the Terminal

```bash
root@omarbelkady:~$ reboot
```

### Kill all Subprocesses

```bash
root@omarbelkady:~$ airmon-ng check kill
```

### Download an image from the terminal and pipe it with a specific name of your choice

```bash
root@omarbelkady: ~$ curl url/nameofimage.jpg > nameYouWishToCallYourImage.jpg
```

## NPM stuff

### How To Initiate A Project with NPM

```bash
root@omarbelkady: ~$ npm init
```

### How To Initialize A Project with Default Vals in NPM

```bash
root@omarbelkady: ~$ npm init -y
```

### How To Install Missing Dependencies from someone's project into your local machine

```bash
root@omarbelkady: ~$ npm install
```

### How To Install A Specific Version of a package

```bash
root@omarbelkady: ~$ npm i packagename@version
```

### How To Install A Dependency Globally

```bash
root@omarbelkady: ~$ npm install -g [the_package_name]
```

### How To save a dependency in package.json within dependencies

```bash
root@omarbelkady: ~$ npm install [the_package_name] --save
```

### How To install a dev dependency in package.json

```bash
root@omarbelkady: ~$ npm install -d [the_package_name]
```

### How To save a dependency in devDependencies[e.g. when you are conducting unittests, minification,etc.]

```bash
root@omarbelkady: ~$ npm install [the_package_name] --save-dev
```

### How To install a dependency in devDependencies

```bash
root@omarbelkady: ~$ npm i -d [the_package_name]
```

### Info About A specific package

```bash
root@omarbelkady: ~$ npm view [the_package_name]
```


### List all the packages in your project and -g flag for global modules

```bash
root@omarbelkady: ~$ npm list
```

### Uninstall a module from the project and -g flag for global modules --save for rm from attr dep and --save-dev for rm from attr dev_dep

```bash
root@omarbelkady: ~$ npm remove [package_name]
```

### Update a module version and -g flag for global modules

```bash
root@omarbelkady: ~$ npm update [package_name]
```

## Git

### Clone A Remote Repository Locally

```bash
root@omarbelkady:~$ git clone <url> 
``` 

### Show all commits

```bash
root@omarbelkady:~$ git log
```

### Show all commits in single lines

```bash
root@omarbelkady:~$ git log --oneline
```

### Show commit history for the last X commits

```bash
root@omarbelkady:~$ git log -X
```


### Shows you what changes you made in each commit [exactly the same as git log]

```bash
root@omarbelkady:~$ git whatchanged
```

### Show who did what and when

```bash
root@omarbelkady:~$ git blame <filename>
```

## Continuous Workflow

### 1- Get the latest version of your project

```bash
root@omarbelkady:~$ git pull origin <nameOfBranch>
```

### Create New Branch LOCALLY 2)-- SKIP THIS STEP IF BRANCH EXISTS

```bash
root@omarbelkady:~$ git checkout -b <nameOfNewBranch>
```

### Get your local branch meaning what you have in your machine to agree with your remote branch(branch on GitHub) usually master IF YOU ARE PM

```bash
root@omarbelkady:~$ git push origin <nameOfBranch>
```

### Switch to a different branch

```bash
root@omarbelkady:~$ git checkout <nameofBranch>
```

### Goto the previous branch

```bash
root@omarbelkady:~$ git checkout -
```

### Delete the local branch(branch on your local machine aka computer)

```bash
root@omarbelkady:~$ git branch -d <nameOfBranch>
```

### Delete a remote branch(branch on your GitHub)

```bash
root@omarbelkady:~$ git push origin :<nameOfBranch>
```


### Find branch by commit number

```bash
root@omarbelkady:~$ git branch -contains<COMMIT_NUMBER>
```

### Merge the master branch with branchpolfb

```bash
root@omarbelkady:~$ git merge branchpolfb
```

### Time Travel i.e. Shows you everything you have done so far

```bash
root@omarbelkady:~$ git reflog
```

### Steps To Create A New Project

#### 1- Initialize Git in your current working directory

```bash
root@omarbelkady:~$ git init
```

### 1a- Initialize An Empty Repository using curl Command

```bash
root@omarbelkady:~$ curl -u "usernameGOESHERE" https://api.github.com/user/repos -d '{"name":"NAMEYOUWANTTOGIVETOYOURREPO"}'
```

#### 2- Add all the files in your working directory to the staging area

```bash
root@omarbelkady:~$ git add .
```

### 2a - If you made a mistake in Step 2 and wish to unstage a file

```bash
root@omarbelkady: ~$ git restore --staged pathOfFile
```

### 2ai - If you made a mistake in Step 2 and wish to unstage a file

```bash
root@omarbelkady: ~$ git reset HEAD nameOffile
```

#### 3- Move the files from the staging area to a local repository use -m to give a specific description of your commit

```bash
root@omarbelkady:~$ git commit -m "A overall description of what you just modified"
```

#### 3a- If you made a mistake in your last commit and wish to modify it

```bash
root@omarbelkady:~$ git commit --amend
```

#### 4- Connect Your Local Repository To The Remote GitHub Repository

```bash
root@omarbelkady:~$ git remote add origin <urlOfRepo>
```

#### 5- Push your local changes to the remote repository

```bash
root@omarbelkady:~$ git push origin <NameOfBranch>
```


### Sets your username and email in the main conig file

```bash
root@omarbelkady:~$ git config
```

### Display the files which have been added to the staging area or are ready to be committed

```bash
root@omarbelkady:~$ git status
```

## Branching

### Delete The Local branch

```bash
root@omarbelkady:~$ git branch -d <nameofBranch>
```

### Delete The Remote branch

```bash
root@omarbelkady:~$ git push origin :<nameofBranch>
```

### List all remote and local branches

```bash
root@omarbelkady:~$ git branch -a
```

### List all the branches in your remote repository

```bash
root@omarbelkady:~$ git branch
```

### Rename a branch

```bash
root@omarbelkady:~$ git branch -m <OLD> <NEW>
```

### Show all existing branches

```bash
root@omarbelkady:~$ git branch -av
```

### Show a list of all the branches a * next to a branch means the branch you are on

```bash
root@omarbelkady:~$ git branch
```


### To rename say, for example omar which I am currently working on

```bash
root@omarbelkady(omar):~$ git branch -m ramo
```

## Good Practices

### ALWAYS PULL BEFORE PUSH. Get the latest changes of your remote repository

```bash
root@omarbelkady:~$ git pull origin . Linux
```

### If you are working on a feature and your friend is working on another feature and your pm tells you we need both your work now in the features repository

```bash
root@omarbelkady:~$ git merge features
```



### Undoing stuff

#### Discard all local modication in your current working dir

```bash
root@omarbelkady:~$ git reset --hard HEAD
```

#### Unstage A File

```bash
root@omarbelkady:~$ git reset <fileyouwishtounstage>
```

#### Discard local changes you made to a specific file

```bash
root@omarbelkady:~$ git checkout HEAD <fileName>
```

### Remove a file you accidentally push from the last commit

```bash
root@omarbelkady:~$ git rm --cached <nameOfFileYouAcccidentallyCommitted>
```

### Reset your head pointer to a previous commit and preserve all changes as unstaged changes

```bash
root@omarbelkady:~$ git reset <commit>
```

### Reset in a particular time with a specified index code e.g. a69103b

```bash
root@omarbelkady:~$ git reset HEAD@{INDEX_CODE}
```

### Reset your head pointer to a previous commit and preserve all uncommited local changes

```bash
root@omarbelkady:~$ git reset --keep <commit>
```

### Remove a file from the previous commit

```bash
root@omarbelkady:~$ git rm --cached <file_to_del>
```




##### 3- Sync your local changes with your remote changes

```bash
root@omarbelkady:~$ git pull origin master
```


### Comparing Revisions

#### Show the difference between master branch(locally) and master branch(remote-GitHub)

```bash
root@omarbelkady:~$ git diff origin..master
```

#### Show the difference between two branches a: clover b: pascallover

```bash
root@omarbelkady:~$ git diff clover pascallover
```


#### Show the difference between work that has been committed and not been committed

```bash
root@omarbelkady:~$ git diff --stat HEAD
```

#### Show the difference what is staged and not yet committed

```bash
root@omarbelkady:~$ git diff --staged
```


#### Show the changes made to a file

```bash
root@omarbelkady:~$ git diff filealpha
```


### Errors in Git

1. Updates were rejected because the tip of your current branch is behind its remote counterpart
a. To fix this run the command bellow

```bash
root@omarbelkady:~$ git pull origin master --rebase
```


### Step 1: CI With Git/BitBucket/CodeCommit, etc.

1. Developers push the code to the repository in a VCS(GitHub, CodeCommit,BitBucket,etc.)

2. A tester in the company runs unit tests and builds what has been just pushed using (Jenkins, CodeBuild)
3. The Developer hears back from the tester in regards to the tests that have passed/failed by the tester
4. This workflow enables the team to find the bugs early, fix them, then send this project to production
5. The result of this is that it enables us to deliver faster because the code is tested quite often
6. We are able to make quite often deployments
7. Developers are happy because they push their code to their branch, the tester then place their work in the build
server, if it passes it it merged to the master branch if it is not it is sent back to the developer.

### Step 2: CD With Git/BitBucket/CodeCommit, etc.

1. SW Release is reliable and fits all the demands of the consumer
2. Deployments happen often and quick
3. Go from 1 Release/3 Months to 5 releases/day
4. Number 3 happens when we have an automated deployment
    Tools That Enable Us To Do This are:
    I. CodeDeploy
    II. Jenkins CD
    III. Spinnaker
    IV. Etc.
5. Developers are happy because code is often push to the repository. The code is then built and tested
6. After, the build server will receive the code build it and test it
7. After that, the deployment server will receive the build output and branch out their version to multiple servers

### What is the difference between Continuous Delivery(may or may not have a manual step) and Continuous Deployment(fully automated)

1. Continuous Delivery means I am deploying often using automation
2. A manual step may be involved so that the deployment can be approved
3. The Deployment is still automated even if there is a manual step in our process and we also repeat this.
4. Continuous Deployment is entire Automation meaning any change I make in my repository is fully deployed to production
5. Continuous Deployement has no manual intervention of approvals 

### Technology Stack for CICD 

Code ⮕ Build ⮕ Test ⮕ Deploy ⮕ Provision

a. For Code I would use either AWS Code Commit or GitHub or a third party code repository

b. For Building And Testing I use AWS CodeBuild or Jenkins CI or any third party CI servers

c. For Deployment and Provision I use Elastic Beanstalk or I provision infrasture with cloud formation
    I. for deployment I would use Code Deploy

d. To orchestrate everything I use AWS Code PipeLine
