echo "Please wait while we build your gateway server... "
gcloud compute instances create gateway --network gateway 
--can-ip-forward 
--scopes default="https://www.googleapis.com/auth/cloud-platform" 
--machine-type f1-micro 
--zone europe-west1-d 
--image-family debian-8 
--image-project debian-cloud 
--tags nat
echo "Your gateway has been successfully been built!"