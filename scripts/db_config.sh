sudo chown -R www-data: /srv/www

sudo -u www-data cp /srv/www/wordpress/wp-config-sample.php /srv/www/wordpress/wp-config.php

sudo -u www-data sed -i "s/database_name_here/$TF_VAR_dbname/" /srv/www/wordpress/wp-config.php
sudo -u www-data sed -i "s/username_here/$TF_VAR_username/" /srv/www/wordpress/wp-config.php
sudo -u www-data sed -i "s/password_here/$TF_VAR_password/" /srv/www/wordpress/wp-config.php
sudo -u www-data sed -i "s/localhost/$TF_VAR_entrypoint/" /srv/www/wordpress/wp-config.php

sudo sed -i "s|define( 'AUTH_KEY',         'put your unique phrase here' );|define('AUTH_KEY',         '.60x%TZlt ib,.h #mZAfUh_1A7AZJDo%SRRfEFLZ?/{Cu5Mj@o6dh01=\&o^OBtx');|" /srv/www/wordpress/wp-config.php
sudo sed -i "s|define( 'SECURE_AUTH_KEY',  'put your unique phrase here' );|define('SECURE_AUTH_KEY',  'ISo-WHuPGffj%>c->\|eqhR\|_=7ol~MakBeuP:C?L0h,UJ-D43\!4,0X? o3~Q^w6C');|" /srv/www/wordpress/wp-config.php
sudo sed -i "s|define( 'LOGGED_IN_KEY',    'put your unique phrase here' );|define('LOGGED_IN_KEY',    '^mB\|\!4vyP}RZ iJRIg\|_I\|)a>dLuZF^Waz:4LL.PT)8Zjg\$p*t8S\!AK0t5Aeu@(}');|" /srv/www/wordpress/wp-config.php
sudo sed -i "s|define( 'NONCE_KEY',        'put your unique phrase here' );|define('NONCE_KEY',        '+p\&^O\|p+#Jr~+-\&l[p)/61\$g9hixUYShI\$1Ll7 _}h[S^]g_,C[eM-G_+oJ)=.6I');|" /srv/www/wordpress/wp-config.php
sudo sed -i "s|define( 'AUTH_SALT',        'put your unique phrase here' );|define('AUTH_SALT',        'DA7AA\$b=+#Yp;Mib[~hA\$zK*[h2 jev(Kx+M\|7W7fh_G.hzm(.\`3/xr\`}3U3bkC,');|" /srv/www/wordpress/wp-config.php
sudo sed -i "s|define( 'SECURE_AUTH_SALT', 'put your unique phrase here' );|define('SECURE_AUTH_SALT', '[\`+CcZnPYY8,}AD9-\|Y.v=Tc[M2B5y#Y@t rnEK*8s]lD.L=F4)o{X7zOV\&_DBOO');|" /srv/www/wordpress/wp-config.php
sudo sed -i "s|define( 'LOGGED_IN_SALT',   'put your unique phrase here' );|define('LOGGED_IN_SALT',   'yr^GD1uH;\!6v 7)4Nq?]W=4Em\|S*v) 4\|c}4(\$=qM y+9kBUZ@\`72_2O}fNXd_Ix');|" /srv/www/wordpress/wp-config.php
sudo sed -i "s|define( 'NONCE_SALT',       'put your unique phrase here' );|define('NONCE_SALT',       's#40p:_rUDsoX\&NJ-nzH+%M.\`j}_j5*3^}hN06Z{\|zGN@T>P9ekV_.\`<\|%Ya>rUR');|" /srv/www/wordpress/wp-config.php

