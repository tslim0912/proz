<?php
/**
 * 
 * Template name: Single - 01 - Product
 * 
 */

get_header();
?>
	<main id="primary" class="site-main">
        <section class="">
            <div class="container-fluid">
                <div class="row justify-content-center">
                    <div class="col-12 col-md-10 px-4">
                    <?php
                    while ( have_posts() ) :
                        the_post();

                        get_template_part( 'template-parts/proz-archive-template', 'products' );

                    endwhile; // End of the loop.
                    ?>
                    </div>
                </div>
            </div>
        </section>
	</main><!-- #main -->
<?php

get_footer();