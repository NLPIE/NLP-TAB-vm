git clone https://github.com/nlpie/nlptab.git
git checkout tags/v1.1
cd /home/vagrant/nlptab
mvn clean install
/usr/share/elasticsearch/bin/plugin install file:///home/vagrant/NLP-TAB/target/releases/nlptab-1.1.0.zip

git clone https://github.com/nlpie/nlptab-webapp.git
cd /home/vagrant/nlptab-webapp
npm install
gulp
cp -R app/* /var/www/html/
ufw allow http