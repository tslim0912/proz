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
        ?>
        
        <section class="">
            <div class="container-fluid">
                <div class="row justify-content-center">
                    <div class="col-12 col-md-10 px-4">
                    <?php
                    get_template_part( 'template-parts/proz-page-template', 'products' );
                    ?>
                    </div>
                </div>
            </div>
        </section>

	</main><!-- #main -->
<?php

get_footer();