<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the website, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/
 *
 * @package WordPress
 */

define('FORCE_SSL_ADMIN', false);

// Set to whatever host:port is provided
if(array_key_exists('HTTP_HOST', $_SERVER)
    && !empty($_SERVER['HTTP_HOST'])
    && array_key_exists('REQUEST_SCHEME', $_SERVER)
) {
        define('WP_HOME',$_SERVER['REQUEST_SCHEME']."://".$_SERVER['HTTP_HOST']);
        define('WP_SITEURL',$_SERVER['REQUEST_SCHEME']."://".$_SERVER['HTTP_HOST']);
}

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', $_ENV['WORDPRESS_DB_NAME'] );

/** Database username */
define( 'DB_USER', $_ENV['WORDPRESS_DB_USER'] );

/** Database password */
define( 'DB_PASSWORD', $_ENV['WORDPRESS_DB_PASSWORD'] );

/** Database hostname */
define( 'DB_HOST', $_ENV['WORDPRESS_DB_HOST'] );

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
define( 'AUTH_KEY',         '234sgsdfgserfasdfsdfasdf' );
define( 'SECURE_AUTH_KEY',  '234sgsdfgserfasdfsdfasdf' );
define( 'LOGGED_IN_KEY',    '234sgsdfgserfasdfsdfasdf' );
define( 'NONCE_KEY',        '234sgsdfgserfasdfsdfasdf' );
define( 'AUTH_SALT',        '234sgsdfgserfasdfsdfasdf' );
define( 'SECURE_AUTH_SALT', '234sgsdfgserfasdfsdfasdf' );
define( 'LOGGED_IN_SALT',   '234sgsdfgserfasdfsdfasdf' );
define( 'NONCE_SALT',       '234sgsdfgserfasdfsdfasdf' );

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
 * @link https://developer.wordpress.org/advanced-administration/debug/debug-wordpress/
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
