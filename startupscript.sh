echo " We are working on setting up the network. Please wait... "

gcloud compute networks create gateway --mode legacy --range 10.230.0.0/16
gcloud compute firewall-rules create gateway-allow-ssh --allow tcp:22 --network gateway
gcloud compute firewall-rules create gateway-allow-internal --allow tcp:1-65535,udp:1-65535,icmp --source-ranges 10.230.0.0/16 --network gateway
gcloud compute routes create no-ip-internet-route --network gateway --destination-range 0.0.0.0/0 --next-hop-instance gateway --next-hop-instance-zone europe-west1-d --tags no-ip --priority 800
