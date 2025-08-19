<?php
/**
 * 
 * Template name: Single - 02 - News & Events
 * 
 */

$paged = (get_query_var('paged')) ? get_query_var('paged') : 1;
$ppp = 9;
$args = array(
    'post_type'      => 'news-events',
    'posts_per_page' => $ppp,
    'paged'          => $paged
);
$query = new WP_Query($args);
get_header();
?>
	<main id="primary" class="site-main">
        <section class="listing listing-news-events">
            <div class="container-fluid">
                <div class="row justify-content-center">
                    <div class="col-12 col-xxxl-10 px-4 px-md-proz">
                        <div class="section-title d-block w-100 text-center">
                            <h2>News & Events</h2>
                        </div>
                        <div class="grid grid-news-events" id="grid-news-events">
                        <?php
                        if ($query->have_posts()) :
                            $i = 0;
                            while ($query->have_posts()) : 
                                $query->the_post();

                                get_template_part( 'template-parts/proz-archive-template', 'news-events', [ 'index' => $i ] );

                                $i++;

                            endwhile;
                        else: 
                                get_template_part( 'template-parts/proz-archive-template', 'none', [ 'post_type' => 'news-events'] );
                        endif;
                        ?>
                        </div>
                        <?php

                        if ($query->have_posts()) :
                            echo '<div class="grid-pagination">';
                            the_posts_pagination(array(
                                'mid_size'  => 2,
                                'prev_text' => __('<<', 'proz'),
                                'next_text' => __('>>', 'proz'),
                            ));
                            echo '</div>';
                        endif;
                        wp_reset_postdata();
                        ?>
                    </div>
                </div>
            </div>
        </section>

	</main><!-- #main -->
<?php

get_footer();