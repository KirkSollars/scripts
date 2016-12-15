echo "Please wait while we build your API web-server... "
gcloud compute instances create api-web-server 
--network gateway
--no-address
--scopes default="https://www.googleapis.com/auth/cloud-platform"
 --machine-type f1-micro 
--zone europe-west1-c 
--image-family debian-8 
--image-project debian-cloud 
--tags no-ip
echo "Your API web-server has been successfully been built!"