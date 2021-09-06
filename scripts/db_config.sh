db=$(aws ssm get-parameter --name b2group3_db --output text --query Parameter.Value)
user=$(aws ssm get-parameter --name b2group3_user --output text --query Parameter.Value)
password=$(aws ssm get-parameter --name b2group3_password --output text --query Parameter.Value --with-decryption)
entrypoint=$(aws ssm get-parameter --name b2group3_entrypoint --output text --query Parameter.Value)

echo $db
echo $user
echo $password
echo $entrypoint

sudo chown -R www-data: /srv/www

runuser -l www-data -c 'wp config set DB_NAME "$db" --path="/srv/www/wordpress"'
runuser -l www-data -c 'wp config set DB_USER "$user" --path="/srv/www/wordpress"'
runuser -l www-data -c 'wp config set DB_PASSWORD "$password" --path="/srv/www/wordpress"'
runuser -l www-data -c 'wp config set DB_HOST "$entrypoint" --path="/srv/www/wordpress"'

sudo service apache2 reload