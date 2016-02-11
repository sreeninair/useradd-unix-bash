#create a user account

read -p "Enter username: " username
read -s -p "Enter password: " pass
egrep "^$username" /etc/passwd >/dev/null

if [ $? -eq 0 ]; then

echo "$username exist"

exit 1

else

useradd -m -p $pass $username

[ $? -eq 0 ] && echo "User has been added to system!" || echo "Failed to add a user!"

fi

exit

