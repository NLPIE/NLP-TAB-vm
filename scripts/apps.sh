git clone https://github.com/nlpie/nlptab.git
git checkout tags/v1.1
cd /home/vagrant/nlptab
mvn clean install
/usr/share/elasticsearch/bin/plugin install file:///home/vagrant/NLP-TAB/target/releases/nlptab-1.1.0.zip

cd /home/vagrant/
git clone https://github.com/nlpie/nlptab-webapp.git
cd /home/vagrant/nlptab-webapp
npm install
gulp
sed -i.bak "s/esServer: 'localhost:9200'/esServer: 'localhost:58032'/g" app/config.js
cp -R app/* /var/www/html/
ufw allow http