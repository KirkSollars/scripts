# create file in nano and save as file.sh
# chmod +x file.sh
# choose what you want to run by ./file.sh database

#!/bin/bash
if [ -z $1 ]
then
  server="*** Unknown server ***"
elif [ -n $1 ]
then
  server=$1
fi

case $server in
   "database") sudo sh database.sh ;;
   "api-server") sudo sh api-server.sh;;
   "database-backup") sudo sh database-backup.sh ;;
   "gateway") sudo sh gateway.sh;;
   "static-web-server") sudo sh static-web-server.sh.";;
   *) echo "Sorry, this is not a build type!";;
esac


