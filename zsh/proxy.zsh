# Turn on the proxy (generating the curlrc if it does not exist)
proxyon(){
  PROXY="http://proxy-mdha.target.com:8080"
  export http_proxy=$PROXY
  export https_proxy=$PROXY
  export HTTP_PROXY=$PROXY
  export HTTPS_PROXY=$PROXY
  export ALL_PROXY=$PROXY
  export NO_PROXY='127.0.0.1,localhost,10.*,target.com,corp.target.com,hq.target.com,dist.target.com,Email.target.com,stores.target.com,labs.target.com'
  export VAGRANT_HTTP_PROXY=http://sqdlx0001.hq.target.com:3128
  export VAGRANT_HTTPS_PROXY=http://sqdlx0001.hq.target.com:3128
  export VAGRANT_NO_PROXY=$NO_PROXY
}
# Turn off the proxy
proxyoff(){
  unset http_proxy
  unset HTTP_PROXY
  unset https_proxy
  unset HTTPS_PROXY
  unset ALL_PROXY
  unset VAGRANT_HTTP_PROXY
  unset VAGRANT_HTTPS_PROXY
  unset VAGRANT_NO_PROXY
}
