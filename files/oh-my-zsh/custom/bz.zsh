export BZ_UNIVERSE=$HOME/bz
path+=$BZ_UNIVERSE/bzmono/www/java/scripts
path+=$BZ_UNIVERSE/bzmono/bztools/scripts
path+=$BZ_UNIVERSE/configMgmt/scripts

#MacPorts
path=('/opt/local/sbin' $path)
path=('/opt/local/bin' $path)
export PATH

export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home

