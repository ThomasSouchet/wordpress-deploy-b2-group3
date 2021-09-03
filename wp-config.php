<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'database_name_here' );

/** MySQL database username */
define( 'DB_USER', 'username_here' );

/** MySQL database password */
define( 'DB_PASSWORD', 'password_here' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'o{V&n-;RiQZK??;M4#ejQxFemoL=+2g1VNJrn##IDi/60UXZk#gb29uM%z%B-E)r' );
define( 'SECURE_AUTH_KEY',  'PjI~:Yqth5u%UgS1m0/C|h6vx#X;B$-IY|Y]2-T-^WbI+.40 pVCM&dZo|Mn4L:u' );
define( 'LOGGED_IN_KEY',    'fJ~wn{U~(AC,]6z.8|Q kUpFV7FtT0<O7v5a+{X?()imw7etCvJAOBTflW2|kh]h' );
define( 'NONCE_KEY',        'Y%M|k>f|{qT]AN($.CU,PbZ!OBW2-[/mGoKn=efYYmNg5!e*=j[jsc&R8&F3P5!e' );
define( 'AUTH_SALT',        'lgt9tJ|$mCRp*Qy,?|d$wHmccIHoE$wm Dywg=v!EJnW9:jBIB.fODmbpnH4oc&u' );
define( 'SECURE_AUTH_SALT', 'pZ-Xn&e|:s[^H+o0i~JY-Ph}l=1<zgJU@V#4(bpDY_j65LHMpje-d9OmyA,`%%X2' );
define( 'LOGGED_IN_SALT',   '+zN~_c,B8#U|Epw_uUR[.{8f5S.=Q@|Ow6/|J!/C!DQ-F.$RZBG*5Vt/~vk]=oy@' );
define( 'NONCE_SALT',       'jIU0Kl/7U3|fuS!6,E){;R;&dx9K&?rm^;.Lv~YjZ+K]9e [L.Th}1)mQPn+oQi|' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';