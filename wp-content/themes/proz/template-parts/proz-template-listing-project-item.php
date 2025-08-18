<?php
$post_id = get_the_ID();
$post_title = get_the_title();
$slug = get_post_field( 'post_name', $post_id );
$post_thumbnail = 'javascript:void();';
if( has_post_thumbnail() ) {
    $post_thumbnail = get_the_post_thumbnail_url();
}
$gallery = get_field('gallery   ');
?>
<div class="grid-item">
    <div class="grid-item-inner">
        <div class="grid-item-upper">
            <div class="grid-upper-title">
                <span class="grid-meta post-date"><?php echo $post_date;?></span>
                <h4 class="post-title"><?php echo $post_title;?></h4>
            </div>
            <div class="grid-upper-cta">
                <a href="<?php echo $post_thumbnail;?>" class="btn btn-inline fancybox=">TAKE A LOOK <?= proz_cta_default_icon();?></a>

                <?php if( $gallery ) { echo '<div class="d-none">';
                    foreach( $gallery as $img ) {
                        echo '<a href="'.$img['url'].'" data-fancybox="'.$slug.'"></a>';
                    }
                echo '</div>';
                } ?>
                
            </div>
        </div>
        <div class="grid-item-lower">
            <a href="<?= $post_thumbnail;?>"><?= $post_thumbnail;?></a>
        </div>
    </div>
</div>