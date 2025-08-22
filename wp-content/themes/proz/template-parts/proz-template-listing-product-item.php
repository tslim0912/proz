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
// To process title styling
$title_style = get_field('title_style');
$style = $title_style['prefix'];
$temp_first = explode(' ', $title);
$first_word = $temp_first[0] . ' ';
$temp_title = str_replace($first_word, '', $title);
if( $style == 'image' ) {
    $temp_title_image = $title_style['prefix_title_image'];
    if( !empty($temp_title_image) ) {
        $title_image = '<img src="'.$temp_title_image['url'].'" class="prefix-title-img"/>';
    }
    else {
        $title_image = $first_word;
    }
    $proccessed_title = '<span class="d-block w-100">'.$title_image . '</span>' . $temp_title;
}
else {
    $title_size = $title_style['prefix_title_size'];
    $title_color = $title_style['prefix_title_color'];
    $first_word = '<span class="w-100 d-block '.$title_color.' '.$title_size.'">'.$first_word.'</span>';

    $proccessed_title = $first_word . $temp_title;
}
$icon = '<img src="'.get_template_directory_uri().'/images/icon-proz.png" class="title-z"/>';
$proccessed_title = str_replace(["Z ", "z "], " " . $icon . " ", $proccessed_title);
?>

<div class="grid-item">
    <div class="grid-item-inner text-center p-4">
        <div class="grid-content" data-magic="<?php echo $magic;?>">
            <div class="grid-thumbnail"><a href="<?php echo $permalink;?>">
            <?php if( has_post_thumbnail() ) {
                echo '<img src="'.get_the_post_thumbnail_url().'" class="img-fluid w-100"/>';
            } else { echo '<span class="d-none">'.$title.'</span>'; } ?></a>
            </div>
            <div class="grid-title"><h2><?php echo $proccessed_title;?></h2></div>
            <div class="grid-tagline"><?php echo $tagline;?></div>
            <div class="grid-excerpt"><?php echo $excerpt;?></div>
        </div>
        <div class="grid-cta">
            <a href="<?php echo $permalink;?>" class="btn btn-outline">VIEW PRODUCT</a>
        </div>
    </div>
</div>