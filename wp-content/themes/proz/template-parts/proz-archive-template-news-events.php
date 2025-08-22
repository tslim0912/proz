<?php
$i = get_query_var( 'index' );
$index = str_pad($i, 2, '0', STR_PAD_LEFT);
$title = get_the_title();
$id = get_the_ID();
$link = get_permalink();
$date = strtoupper( get_the_date( 'F Y' ) );
$thumbnail = '';
$thumbnail_link = '';
if( has_post_thumbnail() ) {
    $thumbnail_link = get_the_post_thumbnail_url();
    $thumbnail = '<img src="'.$thumbnail_link.'" class="img-fluid w-100"/>';
}
$gallery = get_field('gallery');
echo '<div class="grid-item grid-item-'.$id.'" id="grid-item-'.$id.'">
        <div class="grid-item-inner">
            <div class="grid-thumbnail post-thumbnail">'.$thumbnail.'</div>
            <div class="grid-body">
                <span class="d-inline-block post-date">'.$date.'</span>
                <h3 class="post-title">'.$title.'</h3>';
            if( !empty($thumbnail_link) ) {
                echo '<a href="'.$thumbnail_link.'" class="btn btn-cta post-link" data-elementor-open-lightbox="yes" data-elementor-lightbox-slideshow="fancybox-item-'.$id.'" data-elementor-lightbox-title="'. $title .' - Cover">VIEW MORE PHOTOS <div class="proz-icon icon-chevron-right-circle"></div></a>';
            }
            if( !empty($gallery) ) {
                $j = 1;
                foreach($gallery as $img) {
                    $index = str_pad($j, 2, '0', STR_PAD_LEFT);
                    $tagging = $title . ' - Image ' . $index;
                    echo '<a href="'.$img['url'].'" class="d-none" data-elementor-open-lightbox="yes" data-elementor-lightbox-slideshow="fancybox-item-'.$id.'" data-elementor-lightbox-title="'.$tagging.'">VIEW MORE PHOTOS</a>';
                    $j++;
                }
            }
    echo '</div>
    </div>
</div>';
?>