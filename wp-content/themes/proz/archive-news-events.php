<?php
/**
 * 
 * Template name: Single - 02 - News & Events
 * 
 */

get_header();
?>
	<main id="primary" class="site-main">
        <section class="listing listing-news-events">
            <div class="container-fluid">
                <div class="row justify-content-center">
                    <div class="col-12 col-xxxl-10 px-4 px-xxxl-5">
                        <div class="section-title d-block w-100 text-center">
                            <h2>News & Events</h2>
                        </div>
                        <div class="grid">
                        <?php
                        if( have_posts() ) :
                            $i = 0;
                            while ( have_posts() ) :
                                the_post();

                                get_template_part( 'template-parts/proz-archive-template', 'news-events', [ 'index' => $i ] );

                                $i++;

                            endwhile; // End of the loop.
                        else: 
                                get_template_part( 'template-parts/proz-archive-template', 'none', [ 'post_type' => 'news-events'] );
                        endif;
                        ?>
                        </div>
                    </div>
                </div>
            </div>
        </section>

	</main><!-- #main -->
<?php

get_footer();