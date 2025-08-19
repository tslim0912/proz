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
                <h3 class="post-title">'.$title.'</h3>
                <a href="'.$thumbnail_link.'" class="btn btn-cta post-link fancybox" data-fancybox="grid-item-'.$id.'">VIEW MORE PHOTOS '.proz_cta_default_icon().'</a>';
            if( !empty($gallery) ) {
                foreach($gallery as $img) {
                    echo '<a href="'.$img['url'].'" class="d-none fancybox" data-fancybox="fancybox-item-'.$id.'">VIEW MORE PHOTOS</a>';
                }
            }
    echo '</div>
    </div>
</div>';
?>