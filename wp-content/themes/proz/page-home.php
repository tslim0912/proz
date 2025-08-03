<?php
/**
 * 
 * Template name: Page Template - Home
 * 
 */

get_header();
?>
	<main id="primary" class="site-main">

		<?php
		while ( have_posts() ) :
			the_post();

			get_template_part( 'template-parts/proz-page-template', 'home' );

		endwhile; // End of the loop.
		?>

	</main><!-- #main -->
<?php

get_footer();