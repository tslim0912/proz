<?php

$paged = (get_query_var('paged')) ? get_query_var('paged') : 1;
$ppp = 15;
$args = array(
    'post_type'         => 'product',
    'post_status'       => 'publish',
    'order'             => 'desc',
    'orderby'           => 'date',
    'posts_per_page'    => $ppp,
    'paged'             => $paged
);
$products = new WP_Query($args);
echo '<div class="products">';
if( $products->have_posts() ) {
?>
<div class="grid grid-products" id="grid-products">
<?php
    while( $products->have_posts() ) {
        $products->the_post();
        get_template_part( 'template-parts/proz-template-listing', 'product-item' );
    }
    wp_reset_postdata();

?>
</div>
<?php
}
else {

}

if ($products->have_posts()) :
    echo '<div class="products-pagination">';
    the_posts_pagination(array(
        'mid_size'  => 2,
        'prev_text' => __('<<', 'proz'),
        'next_text' => __('>>', 'proz'),
    ));
    echo '</div>';
endif;
echo '</div>';
?>