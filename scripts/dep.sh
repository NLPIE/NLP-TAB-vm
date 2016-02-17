#!/bin/bash
#
# Setup the the box. This runs as root

apt-get -y update

apt-get -y install curl software-properties-common

# You can install anything you need here.

add-apt-repository -y ppa:webupd8team/java

wget -qO - https://packages.elastic.co/GPG-KEY-elasticsearch | apt-key add -

echo "deb http://packages.elastic.co/elasticsearch/2.x/debian stable main" | tee -a /etc/apt/sources.list.d/elasticsearch-2.x.list

echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections

curl -sL https://deb.nodesource.com/setup | bash -

apt-get -y install postgresql postgresql-contrib oracle-java8-installer \
elasticsearch=2.1.0 apache2 apache2-doc apache2-utils maven git nodejs build-essential

update-rc.d elasticsearch defaults 95 10

npm install -g npm

npm install -g gulp-cli
