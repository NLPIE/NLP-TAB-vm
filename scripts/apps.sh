cd /home/vagrant/nlptab-esplugin

mvn clean install

/usr/share/elasticsearch/bin/plugin install file:///home/vagrant/nlptab-esplugin/target/releases/nlptab-1.1.0-SNAPSHOT.zip

cd /home/vagrant/nlptab-webapp

npm install
bower install
grunt build

