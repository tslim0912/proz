<?php
/**
 * 
 * Template name: Single - 02 - News & Events
 * 
 */

get_header();
?>
	<main id="primary" class="site-main">

		<?php
		while ( have_posts() ) :
			the_post();

			get_template_part( 'template-parts/proz-archive-template', 'news-events' );

		endwhile; // End of the loop.
		?>

	</main><!-- #main -->
<?php

get_footer();