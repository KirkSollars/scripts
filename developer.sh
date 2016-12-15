echo "Please wait while we build your developer server... "
gcloud compute instances create developer 
--network gateway 
--no-address
--machine-type f1-micro 
--scopes default="https://www.googleapis.com/auth/cloud-platform" 
--zone europe-west1-d 
--image-family debian-8 
--image-project debian-cloud 
--tags no-ip
echo "Your developer has been successfully been built!"