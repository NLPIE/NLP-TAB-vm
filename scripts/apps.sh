cd /home/vagrant/NLP-TAB

mvn clean install

/usr/share/elasticsearch/bin/plugin install file:///home/vagrant/NLP-TAB/target/releases/nlptab-1.1.0-SNAPSHOT.zip

cd /home/vagrant/NLP-TAB-webapp

npm install
GIT_DIR=/tmp bower --allow-root install
grunt build

cp -R dist/ /var/www/html/
