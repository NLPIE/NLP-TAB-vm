git clone https://github.com/nlpie/nlptab-webapp.git
cd nlptab-webapp
npm install
gulp
sed -i.bak "s/esServer: 'localhost:9200'/esServer: 'localhost:58032'/g" app/config.js
cp -R app/* /var/www/html/
ufw allow http
