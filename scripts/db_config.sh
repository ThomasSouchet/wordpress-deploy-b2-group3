db=$(aws ssm get-parameter --name b2group3_db --output text --query Parameter.Value)
user=$(aws ssm get-parameter --name b2group3_user --output text --query Parameter.Value)
password=$(aws ssm get-parameter --name b2group3_password --output text --query Parameter.Value --with-decryption)
entrypoint=$(aws ssm get-parameter --name b2group3_entrypoint --output text --query Parameter.Value)

sudo chown -R www-data: /srv/www

sudo -u www-data sed -i "s/database_name_here/$db/" /srv/www/wordpress/wp-config.php
sudo -u www-data sed -i "s/username_here/$user/" /srv/www/wordpress/wp-config.php
sudo -u www-data sed -i "s/password_here/$password/" /srv/www/wordpress/wp-config.php
sudo -u www-data sed -i "s/localhost/$entrypoint/" /srv/www/wordpress/wp-config.php

sudo service apache2 reload