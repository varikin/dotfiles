export BIFROST_CACERT=$HOME/.target.crt
export BIFROST_URL=https://bifrost-ca.target.com
ssh-lab (){
    echo "Updating cert"
    bifrost ca sign app-bf-gcp-lab-cpe-dev -k ~/.ssh/id_rsa.pub -f ~/.ssh/id_rsa-cert.pub
    if [ $? -ne 0 ]; then
      echo "Need to re-auth"
      bifrost auth login
      echo "Signing cert again."
      bifrost ca sign app-bf-gcp-lab-cpe-dev -k ~/.ssh/id_rsa.pub -f ~/.ssh/id_rsa-cert.pub
    fi
    echo "SSH to $1"
    ssh bastion@$1@bifrost.us-central1.tgt-pe-lab.gcp.cloud.target.internal -p 2222
}
ssh-test (){
    echo "Updating cert"
    bifrost ca sign app-bf-gcp-test-cpe-dev -k ~/.ssh/id_rsa.pub -f ~/.ssh/id_rsa-cert.pub
    if [ $? -ne 0 ]; then
      echo "Need to re-auth"
      bifrost auth login
      echo "Signing cert again."
      bifrost ca sign app-bf-gcp-test-cpe-dev -k ~/.ssh/id_rsa.pub -f ~/.ssh/id_rsa-cert.pub
    fi
    echo "SSH to $1"
    ssh bastion@$1@bifrost.us-central1.tgt-pe-test.gcp.cloud.target.internal -p 2222
}
ssh-prod (){
    echo "Updating cert"
    bifrost ca sign app-bf-gcp-prod-cpe-dev -k ~/.ssh/id_rsa.pub -f ~/.ssh/id_rsa-cert.pub
    if [ $? -ne 0 ]; then
      echo "Need to re-auth"
      bifrost auth login
      echo "Signing cert again."
      bifrost ca sign app-bf-gcp-prod-cpe-dev -k ~/.ssh/id_rsa.pub -f ~/.ssh/id_rsa-cert.pub
    fi
    echo "SSH to $1"
    ssh bastion@$1@bifrost.us-central1.tgt-pe-prod.gcp.cloud.target.internal -p 2222
}
ssh-elab (){
    echo "Updating cert"
    bifrost ca sign gcp-lab-ssh-developer -k ~/.ssh/id_rsa.pub -f ~/.ssh/id_rsa-cert.pub
    if [ $? -ne 0 ]; then
      echo "Need to re-auth"
      bifrost auth login
      echo "Signing cert again."
      bifrost ca sign gcp-lab-ssh-developer -k ~/.ssh/id_rsa.pub -f ~/.ssh/id_rsa-cert.pub
    fi
    echo "SSH to $1"
    ssh bastion@$1@bifrost.us-east1.tgt-pe-lab.gcp.cloud.target.internal -p 2222
}
ssh-etest (){
    echo "Updating cert"
    bifrost ca sign app-bf-gcp-test-cpe-dev -k ~/.ssh/id_rsa.pub -f ~/.ssh/id_rsa-cert.pub
    if [ $? -ne 0 ]; then
      echo "Need to re-auth"
      bifrost auth login
      echo "Signing cert again."
      bifrost ca sign app-bf-gcp-test-cpe-dev -k ~/.ssh/id_rsa.pub -f ~/.ssh/id_rsa-cert.pub
    fi
    echo "SSH to $1"
    ssh bastion@$1@bifrost.us-east1.tgt-pe-test.gcp.cloud.target.internal -p 2222
}
ssh-eprod (){
    echo "Updating cert"
    bifrost ca sign app-bf-gcp-prod-cpe-dev -k ~/.ssh/id_rsa.pub -f ~/.ssh/id_rsa-cert.pub
    if [ $? -ne 0 ]; then
      echo "Need to re-auth"
      bifrost auth login
      echo "Signing cert again."
      bifrost ca sign app-bf-gcp-prod-cpe-dev -k ~/.ssh/id_rsa.pub -f ~/.ssh/id_rsa-cert.pub
    fi
    echo "SSH to $1"
    ssh bastion@$1@bifrost.us-east1.tgt-pe-prod.gcp.cloud.target.internal -p 2222
}
