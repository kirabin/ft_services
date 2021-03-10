<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
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
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'FQY5`<BX=[A5)Zp[cR&s4nj1q9ID}9,&@MN@NanSH`bCcvz?o^RI/y78V=T|P_3/');
define('SECURE_AUTH_KEY',  'M7+7)G!m-oU>9)-eCxF+V?xnmjq_4+mKWe+tN[:v[|kBefSlwX=IGoZ OM|-j}1c');
define('LOGGED_IN_KEY',    'JG-mJOA*%7EO^&sS 9gKVZM8uUQStb*W*VTcuWB/+PKRk|?TjgX;?S<{8Hcn46*Q');
define('NONCE_KEY',        '1n9|h7|-,:?Yd%vLK8v,TV+mf[OuSVOZ:i7(qjGmLbtmW!u*Du tS&!! h==q>l;');
define('AUTH_SALT',        'I5i|W9&<gcK+Ttnf!8-{sr XnqA|.s#JxDMBjglL_O?wf:P}U+7qK|aep+MHUCE>');
define('SECURE_AUTH_SALT', '{Fp;1^HWz#wOVF`9l&I~VF6ZcHRSQ-Q>Hr$<^BodWfT{?DN0mOPmU;tc}k$qARt!');
define('LOGGED_IN_SALT',   'sj*0l!`S$1r6bC7(#D*Q:/Gk5}-b+ |Bz(P^wSnBO-e;P_1(]UJ+-i|gA.b&?644');
define('NONCE_SALT',       ']u$Otog-5=Zja[wh+Y&G=P>,Q>Urj*OM@GC:2tmlg{@b G+.P,-MHRBZk(v[+.Q%');

/**#@-*/

/**
 * WordPress Database Table prefix.
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

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';