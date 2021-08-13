## Bash Walkthrough


### Comment

```bash
#!/usr/bin/bash
:' 
This is a multi-line comment
'

```

### While Loop

```bash
#!/bin/bash
i=15
while [ $i -le 17 ]
    do
        echo "Number is: "$i
        ((i++))
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
#!/bin/bash
echo -n "What would you like your directory to be called: "
read dirname
commandtorun="mkdir $dirname"
eval $commandtorun
echo "New directory created "
```


### Sending An Email

```bash
#!/bin/bash
echo -n "Who would you like to send a message to? "
read recipient
subject="Welcome"
message="Welcome to my repository please learn Bash"
`mail -s $subject $recipient <<< $message`
```