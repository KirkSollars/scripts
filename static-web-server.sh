echo "Please wait while we build your static-web-server server... "
gcloud compute instances create static-web-server 
--network gateway 
--no-address 
--machine-type f1-micro 
--scopes default="https://www.googleapis.com/auth/cloud-platform" 
--zone europe-west1-d 
--image-family debian-8 
--image-project debian-cloud 
--tags no-ip
echo "Your static-web-server  has been successfully been built!"