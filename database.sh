echo "Please wait while we build your database server... "
gcloud compute instances create database 
--network gateway 
--no-address 
--machine-type f1-micro 
--scopes default="https://www.googleapis.com/auth/cloud-platform" 
--zone europe-west1-d 
--image-family debian-8 
--image-project debian-cloud 
--tags no-ip
echo "Your database has been successfully been built!"