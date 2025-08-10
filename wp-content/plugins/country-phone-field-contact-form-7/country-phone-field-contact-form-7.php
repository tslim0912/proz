<?php
/*
Plugin Name: Country & Phone Field Contact Form 7
Description: Add country drop down with flags and phone number with country phone extensions field in contact form 7.
Version: 2.6.1
Author: Narinder Singh Bisht
Author URI: http://narindersingh.in
License: GPL3
License URI: http://www.gnu.org/licenses/gpl.html
Text Domain: nb-cpf
*/

// Block direct access to the main plugin file.
defined( 'ABSPATH' ) or die( 'No script kiddies please!' );

class NB_CPF_Plugin{
	
	public function __construct(){
		add_action( 'plugins_loaded', array( $this, 'nb_load_plugin_textdomain' ) );
		if(class_exists('WPCF7')){
			
			$this->nb_plugin_constants();
			require_once NB_CPF_PATH . 'includes/autoload.php';
			add_action( 'admin_notices', array( $this, 'nb_affiliate_admin_notice' ) );
			add_action( 'admin_init', array( $this,  'nb_affiliate_notice_dismissed') );
		} else {
			add_action( 'admin_notices', array( $this, 'nb_admin_error_notice' ) );
		}
		
	}
	
	public function nb_load_plugin_textdomain() {
		load_plugin_textdomain( 'nb-cpf', false, basename( dirname( __FILE__ ) ) . '/languages/' );
	}
	
	/*
		register admin notice if contact form 7 is not active.
	*/
	public function nb_admin_error_notice(){
		$message = sprintf( esc_html__( 'The %1$sCountry & Phone Field Contact Form 7%2$s plugin requires %1$sContact form 7%2$s plugin active to run properly. Please install %1$scontact form 7%2$s and activate', 'nb-cpf' ),'<strong>', '</strong>');

		printf( '<div class="notice notice-error"><p>%1$s</p></div>', wp_kses_post( $message ) );
	}
	
	/*
		set plugin constants
	*/
	public function nb_plugin_constants(){
		
		if ( ! defined( 'NB_CPF_PATH' ) ) {
			define( 'NB_CPF_PATH', plugin_dir_path( __FILE__ ) );
		}
		if ( ! defined( 'NB_CPF_URL' ) ) {
			define( 'NB_CPF_URL', plugin_dir_url( __FILE__ ) );
		}
		
	}

	//Display admin notices 
	public function nb_affiliate_admin_notice() {
		//get the current screen
		$screen = get_current_screen();
		$user_id = get_current_user_id();
    
		
		//return if not plugin settings page 
		//To get the exact your screen ID just do var_dump($screen)
		if ( $screen->id === 'contact_page_cpf-settings' && !get_user_meta( $user_id, 'nb_affiliate_notice_dismissed' )){
		?>
		<div class="notice notice-success" style="position:relative;">
			<h2><?php _e('Get your website on the first page of Google', 'nb-cpf') ?></h2>
			<div class="text" style="clear:both; display:flex; flex-direction: row; justify-content: space-around;">
				<div class="img-box" style=" background-color:#ff994b; padding:10px;"><a href="<?php echo esc_url('https://seobuddy.com/seo-checklist/narinderbisht') ?>" style="text-decoration:none;" target="_blank"><img src="<?php echo NB_CPF_URL ?>assets/img/checklist-by-seobuddy.svg" alt="seobuddy"/></a></div>
				<div class="text-2" style="font-size:20px; font-weight:bold;"><a href="<?php echo esc_url('https://seobuddy.com/seo-checklist/narinderbisht') ?>" style="text-decoration:none;" target="_blank">Special for <span style="color:#ff994b">Narinderbisht</span> WP Plug-In Users
				<p class="text-1">Use Coupon "<span style="color:#ff994b">NARINDERBISHT</span>" and <span style="color:#ff994b">get 25% off</span> when you purchase today</p></a></div>
			</div>
			
			<a class="notice-dismiss" href="?page=cpf-settings&nb-affiliate-dismissed"></a>
		</div>
	<?php
		} else{
			return;
		}
	}

	public function nb_affiliate_notice_dismissed() {
		$user_id = get_current_user_id();
		if ( isset( $_GET['nb-affiliate-dismissed'] ) )
			add_user_meta( $user_id, 'nb_affiliate_notice_dismissed', 'true', true );
	}
}

// Instantiate the plugin class.
$nb_cpf_plugin = new NB_CPF_Plugin();