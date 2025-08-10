<?php
/**
 * 
 * Template name: Single - 01 - Product
 * 
 */

get_header();
?>
	<main id="primary" class="site-main">

		<?php
		while ( have_posts() ) :
			the_post();

			get_template_part( 'template-parts/proz-archive-template', 'products' );

		endwhile; // End of the loop.
		?>

	</main><!-- #main -->
<?php

get_footer();