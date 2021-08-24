## Bash Walkthrough

### Print Stuff

```bash
echo "blablabla"
```

### Declaring A Variable

```bash
MYVAR="HEYTHERE"
#reference it using a dollar sign in front of the name
echo $MYVAR
```


### How To Write A Script

```bash
#!/path/of/app/to/run/your/script

```


### Comment

```bash
#!/usr/bin/bash
:' 
This is a multi-line comment
'

```

### While Loop

```bash
#!/usr/bin/bash
i=15
while [ $i -le 17 ]
    do
        echo "Number is: "$i
        ((i++))
done
```

### While Loop for a y/n answer

```bash
while true;
do
    read -p "Do You Want To Learn Bash" yaynay
    case $yaynay in
        [Yy]* ) break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no!";;
    esac
done
```

### For Loop

```bash
#!/bin/bash
i=15
for (( mycount=1; mycount<=i; mycount++ ))
    do
        ((count++))
        echo "Count is: "$count
done
```


### Getting Input From the User
```bash
#!/bin/bash
echo -n "Please enter something I will return it back to you!:"
       read user_input
echo "Your input was: $user_input"
```


### Creating Directory

```bash
#!/usr/bin/bash
echo -n "What would you like your directory to be called: "
read dirname
commandtorun="mkdir $dirname"
eval $commandtorun
echo "New directory created "
```


### Sending An Email

```bash
#!/usr/bin/bash
echo -n "Who would you like to send a message to? "
read recipient
subject="Welcome"
message="Welcome to my repository please learn Bash"
`mail -s $subject $recipient <<< $message`
```


### Run Sth in The Background i.e. Run lpr command in the background

```bash
#!/usr/bin/bash
ls -l | lpr &
```