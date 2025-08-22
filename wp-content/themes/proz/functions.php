<?php
/**
 * PROZ functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package PROZ
 */

if ( ! defined( '_S_VERSION' ) ) {
	// Replace the version number of the theme on each release.
	define( '_S_VERSION', '1.0.'.time() );
}

/**
 * Sets up theme defaults and registers support for various WordPress features.
 *
 * Note that this function is hooked into the after_setup_theme hook, which
 * runs before the init hook. The init hook is too late for some features, such
 * as indicating support for post thumbnails.
 */
function proz_setup() {
	/*
		* Make theme available for translation.
		* Translations can be filed in the /languages/ directory.
		* If you're building a theme based on PROZ, use a find and replace
		* to change 'proz' to the name of your theme in all the template files.
		*/
	load_theme_textdomain( 'proz', get_template_directory() . '/languages' );

	// Add default posts and comments RSS feed links to head.
	add_theme_support( 'automatic-feed-links' );

	/*
		* Let WordPress manage the document title.
		* By adding theme support, we declare that this theme does not use a
		* hard-coded <title> tag in the document head, and expect WordPress to
		* provide it for us.
		*/
	add_theme_support( 'title-tag' );

	/*
		* Enable support for Post Thumbnails on posts and pages.
		*
		* @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
		*/
	add_theme_support( 'post-thumbnails' );

	// This theme uses wp_nav_menu() in one location.
	register_nav_menus(
		array(
			'menu-1' => esc_html__( 'Primary', 'proz' ),
		)
	);

	/*
		* Switch default core markup for search form, comment form, and comments
		* to output valid HTML5.
		*/
	add_theme_support(
		'html5',
		array(
			'search-form',
			'comment-form',
			'comment-list',
			'gallery',
			'caption',
			'style',
			'script',
		)
	);

	// Set up the WordPress core custom background feature.
	add_theme_support(
		'custom-background',
		apply_filters(
			'proz_custom_background_args',
			array(
				'default-color' => 'ffffff',
				'default-image' => '',
			)
		)
	);

	// Add theme support for selective refresh for widgets.
	add_theme_support( 'customize-selective-refresh-widgets' );

	/**
	 * Add support for core custom logo.
	 *
	 * @link https://codex.wordpress.org/Theme_Logo
	 */
	add_theme_support(
		'custom-logo',
		array(
			'height'      => 250,
			'width'       => 250,
			'flex-width'  => true,
			'flex-height' => true,
		)
	);
}
add_action( 'after_setup_theme', 'proz_setup' );

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function proz_content_width() {
	$GLOBALS['content_width'] = apply_filters( 'proz_content_width', 640 );
}
add_action( 'after_setup_theme', 'proz_content_width', 0 );

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function proz_widgets_init() {
	register_sidebar(
		array(
			'name'          => esc_html__( 'Sidebar', 'proz' ),
			'id'            => 'sidebar-1',
			'description'   => esc_html__( 'Add widgets here.', 'proz' ),
			'before_widget' => '<section id="%1$s" class="widget %2$s">',
			'after_widget'  => '</section>',
			'before_title'  => '<h2 class="widget-title">',
			'after_title'   => '</h2>',
		)
	);
}
add_action( 'widgets_init', 'proz_widgets_init' );

/**
 * Enqueue scripts and styles.
 */
function custom_enqueue_jquery_frontend() {
    // Only run on the public frontend
    if ( is_admin() ) {
        return; // Stop in wp-admin
    }

    // Stop inside Elementor editor or live preview (iframe)
    if ( defined('ELEMENTOR_VERSION') ) {
        // Elementor editor mode
        if ( \Elementor\Plugin::$instance->editor->is_edit_mode() ) {
            return;
        }

        // Elementor live preview iframe
        if ( isset( $_GET['elementor-preview'] ) && $_GET['elementor-preview'] == 'true' ) {
            return;
        }
    }

    // Replace default WordPress jQuery with 3.7.1
    wp_deregister_script('jquery');
    wp_register_script(
        'jquery',
        'https://code.jquery.com/jquery-3.7.1.min.js',
        [],
        '3.7.1',
        true
    );
    wp_enqueue_script('jquery');

    // (Optional) Add jQuery Migrate if you have old plugins/scripts
    wp_enqueue_script(
        'jquery-migrate',
        'https://code.jquery.com/jquery-migrate-3.4.1.min.js',
        ['jquery'],
        '3.4.1',
        true
    );
}
add_action('wp_enqueue_scripts', 'custom_enqueue_jquery_frontend', 20);

function proz_scripts() {
    wp_enqueue_style( 'bootstrap-css', 'https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css', [], null);
    wp_enqueue_style( 'swiper', 'https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css', [], null);
	wp_enqueue_style( 'proz-style', get_stylesheet_uri(), array(), _S_VERSION );
	wp_style_add_data( 'proz-style', 'rtl', 'replace' );
	// wp_enqueue_style( 'fancybox', get_template_directory_uri() . '/css/jquery.fancybox.min.css', array(), _S_VERSION, 'all' );
	wp_enqueue_style( 'custom', get_template_directory_uri() . '/css/custom.css', array(), _S_VERSION, 'all' );

	wp_enqueue_script( 'bootstrap-js', 'https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js', [], null, true);
	wp_enqueue_script( 'swiper', 'https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js', [], null, true);
	// wp_enqueue_script( 'fancybox', get_template_directory_uri() . '/js/jquery.fancybox.min.js', array(), _S_VERSION, true );
	wp_enqueue_script( 'proz-navigation', get_template_directory_uri() . '/js/navigation.js', array(), _S_VERSION, true );
	wp_enqueue_script( 'scripts', get_template_directory_uri() . '/js/scripts.js', array(), _S_VERSION, true );


    wp_enqueue_style( 'media-query', get_template_directory_uri() . '/css/media.css', array(), _S_VERSION, 'all' );
}
add_action( 'wp_enqueue_scripts', 'proz_scripts' );

function add_attributes_to_bootstrap($html, $handle) {
    if ('bootstrap-css' === $handle) {
        $integrity = 'sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC';
        $html = str_replace('/>', ' integrity="' . $integrity . '" crossorigin="anonymous" />', $html);
    }
    return $html;
}
add_filter('style_loader_tag', 'add_attributes_to_bootstrap', 10, 2);
function add_crossorigin_to_jquery($tag, $handle) {
    if ('jQuery' === $handle) {
        $integrity = 'sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=';
        return str_replace(' src', ' integrity="' . $integrity . '" crossorigin="anonymous" src', $tag);
    }
    else if ('bootstrap-js' === $handle) {
        $integrity = 'sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM';
        return str_replace(' src', ' integrity="' . $integrity . '" crossorigin="anonymous" src', $tag);
    }
    return $tag;
}
add_filter('script_loader_tag', 'add_crossorigin_to_jquery', 10, 2);

/**
 * Implement the Custom Header feature.
 */
require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Functions which enhance the theme by hooking into WordPress.
 */
require get_template_directory() . '/inc/template-functions.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';

/**
 * Load Jetpack compatibility file.
 */
if ( defined( 'JETPACK__VERSION' ) ) {
	require get_template_directory() . '/inc/jetpack.php';
}

function proz_cta_default_icon() {
    return '<?xml version="1.0" encoding="UTF-8"?>
        <svg id="Layer_2" data-name="Layer 2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24.78 24.78">
        <g id="TEXT">
            <g>
            <path d="M12.39,24.78C5.56,24.78,0,19.22,0,12.39S5.56,0,12.39,0s12.39,5.56,12.39,12.39-5.56,12.39-12.39,12.39ZM12.39,.45C5.8,.45,.45,5.8,.45,12.39s5.36,11.94,11.94,11.94,11.94-5.36,11.94-11.94S18.97,.45,12.39,.45Z"/>
            <polygon points="9.04 17.5 8.88 17.21 17.39 12.39 8.88 7.56 9.04 7.28 18.05 12.39 9.04 17.5"/>
            </g>
        </g>
    </svg>';
}
function get_template_media_url($filename) {
    return get_template_directory_uri() . '/images/';
}
function proz_default_cta($label, $url, $target) {
    if( empty($url) ) {
        return 'Missing URL';
    }
    else {
        $b = $url;
        if( empty($label) ) {
            $a = 'View More';
        }
        else {
            $a = $label;
        }
        if( $target == '_self' ||  $target == '_blank' ) {
            $c = ' target="'.$target.'"';
        }
        else {
            $c = '';
        }

        return '<a href="'.$b.'"'.$c.' class="btn btn-cta"><span>'.$a.'</span> '.proz_cta_default_icon().'</a>';
    }
}

function proz_sirim_reports() {
	$args = array(
		'post_type'		=> 'report',
		'post_status'	=> 'publish',
		'order'			=> 'asc',
		'orderby'		=> 'date',
		'posts_per_page' => -1,
	);
	$reports = new WP_Query($args);
	ob_start();
	echo '<div class="proz-sirim-reports">';
	if( $reports->have_posts() ) {
		echo '<div class="swiper sirim-reports" id="sirim-reports">';
			echo '<div class="swiper-wrapper">';
			while( $reports->have_posts() ) {
				$reports->the_post();
				$post_id = get_the_ID();
				$title = get_the_title();
				$slug = get_post_field( 'post_name', $post_id );
				$thumbnail = get_the_post_thumbnail_url();
				$pdf = get_field('pdf');
				$others = '';
				if( $pdf ) {
					$i = 2;
					$others .= '<div class="sirim-others d-none">';
					foreach($pdf as $img) {
						$index = str_pad($i, 2, '0', STR_PAD_LEFT);
						$page = $title.' - Page '.$index;
						$others .= '<a href="'.$img['url'].'" data-elementor-open-lightbox="yes" data-elementor-lightbox-slideshow="'.$slug.'" data-elementor-lightbox-title="'.$page.'"><img src="'.$img['url'].'" class="img-fluid w-100"/>'.$title.'</a>';
						$i++;
					}
					$others .= '</div>';
				}
				echo '
				<div class="swiper-slide sirim-item sirim-item-'.$slug.'">
					<div class="sirim-item-inner">
						<div class="sirim-thumbnail"><a href="'.$thumbnail.'" data-elementor-open-lightbox="yes" data-elementor-lightbox-slideshow="'.$slug.'" data-elementor-lightbox-title="'.$title.' - Page 01"><img src="'.$thumbnail.'" class="img-fluid w-100"/></a></div>'.$others.'
					</div>
				</div>
				';
			}
			WP_RESET_POSTDATA();
			echo '</div>';
			echo '<div class="sirim-report-pagination"></div>';
		echo '</div>';
	}
	else {
		echo '<div class="alert alert-warning" role="alert">There is no Report found!</div>';
	}
	echo '</div>';
	return ob_get_clean();
}
add_shortcode('proz_sirim_reports', 'proz_sirim_reports');

function proz_retailer_locator() {

	ob_start();
	echo '<div class="wrapper p-4"><div class="alert alert-warning mb-0" role="alert">Coming Soon!</div></div>';
	return ob_get_clean();
}
add_shortcode('proz_retailer_locator', 'proz_retailer_locator');