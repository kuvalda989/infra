# infra
gcloud compute instances create --boot-disk-size=10Gb --image=ubuntu-1604-xenial-v20170815a --image-project=ubuntu-os-cloud --machine-type=g1-small --tags puma-server --restart-on-failure --zone=europe-west1-b reddit-app-3  --metadata startup-script="cd /home/appuser && su appuser -c 'git clone https://github.com/kuvalda989/infra && cd infra && source startup-script.sh'"
