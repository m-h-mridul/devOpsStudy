
#!/bin/bash

echo "\n displaying the ip address"
ip a

echo -e "\n display the ip address list and time "
curl 169.254.169.254 

echo "\n go to lastest metadata directory"
curl 169.254.169.254/latest/meta-data

# Read the user's input into a variable
echo -e "\n Please enter your command:"
while true; do
    echo "\n \n Do you want to continue? if no then type -> NO"
    read user_name
    
    if [ "$user_name" == "no" ] && [ "$user_name" == "NO" ]; then
        echo " \n \n Exiting the loop as per your request."
        break
    else
        echo "\n Continuing the loop..."
        data= $(curl 169.254.169.254/latest/meta-data/$user_name)
        echo " \n  $data"
    fi
done



