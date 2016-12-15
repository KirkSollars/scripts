echo "Please wait while we build your database-backup server... "
gcloud compute instances create database-backup 
--network gateway-backup 
--no-address 
--machine-type f1-micro 
--scopes default="https://www.googleapis.com/auth/cloud-platform"
--zone europe-west1-d 
--image-family debian-8 
--image-project debian-cloud 
--tags no-ip
echo "Your database-backup has been successfully been built!"