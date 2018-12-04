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
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'pineridg_locabin');

/** MySQL database username */
define('DB_USER', 'pineridg_locabin');

/** MySQL database password */
define('DB_PASSWORD', 'Lo%584#bin');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'ws+|ju&gx_7q^Ofa&KuM^T:SOrs;Bk_ozcd_1}Cx2YKi?i_xZJABoK0i.4RL.>y<');
define('SECURE_AUTH_KEY',  'r`JDLZ34rxTW, agJQ++,rur3(Uha!qf|At&?)/bfxu;&q`GMOqCgz6b1%Ce?_6V');
define('LOGGED_IN_KEY',    'MG5ugSi#dTfKf6.@pv:~1J_5K1e<?;YO6gk9V^*7J7]Rogen`zm9Ao2>KP,_1MZe');
define('NONCE_KEY',        '31Vir-!fm~SW6q*FP;ui8?Lyw.n es4WxNyg8ZQ)hL_.UNOfIoz5lzN v7EM;/-W');
define('AUTH_SALT',        'XhUw:xl.}hyHg-d1X8um5/KA+*5j7{zsDSVE [pTf$&fgt=t3ezAy-j01Awo^RB8');
define('SECURE_AUTH_SALT', '7Hl+3|X0_T0W2.cmflNs~6gnwf>QIFuiDkm2VnT;`38!OIVi ZSyBkRE{y[r2+F ');
define('LOGGED_IN_SALT',   'c(}KaRd||m*9d)%O!pN`=$v$fi#OG^N:Kn+HcQ?pg5k{:5!m#JheGN*|;29O:<$c');
define('NONCE_SALT',       'uLJw&*jBX]Z`<Mf4.7c.YtKl,{)jS3Ut=xo{HOU*,0<xN,4Y]J.DHn[I[Ijh,5m&');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
