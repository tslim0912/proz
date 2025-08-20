<?php
$id = get_the_ID();
$title = get_the_title();
$magic = 'mo';
if( str_contains($title, ' Z ') ) {
    $magic = 'magical';
}
$tagline = get_field('tagline');
if( has_excerpt() ) {
    $excerpt = get_the_excerpt();
}
else {
    $short_description = get_field('short_description');
    $paragraphs = explode("\n", trim($short_description));
    foreach($paragraphs as $p){
        $p = trim($p);
        if(!empty($p)){
            $excerpt = $p;
            break;
        }
        else {
            $excerpt = '';
        }
    }
}
$permalink = get_permalink();
?>

<div class="grid-item">
    <div class="grid-item-inner text-center">
        <div class="grid-content" data-magic="<?php echo $magic;?>">
            <div class="grid-thumbnail"><a href="<?php echo $permalink;?>">
            <?php if( has_post_thumbnail() ) {
                echo '<img src="'.get_the_post_thumbnail_url().'" class="img-fluid w-100"/>';
            } else { echo '<span class="d-none">'.$title.'</span>'; } ?></a>
            </div>
            <div class="grid-title"><?php echo $title;?></div>
            <div class="grid-tagline"><?php echo $tagline;?></div>
            <div class="grid-excerpt"><?php echo $excerpt;?></div>
        </div>
        <div class="grid-cta">
            <a href="<?php echo $permalink;?>" class="btn btn-outline">VIEW PRODUCT</a>
        </div>
    </div>
</div>