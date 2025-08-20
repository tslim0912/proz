<?php
/**
 * 
 * Template name: Page Template - 03 - Retail
 * 
 */

get_header();
?>
	<main id="primary" class="site-main">

		<?php
		while ( have_posts() ) :
			the_post();

		    the_content();

		endwhile; // End of the loop.

        
        get_template_part( 'template-parts/proz-page-template', 'products' );
		?>

	</main><!-- #main -->
<?php

get_footer();