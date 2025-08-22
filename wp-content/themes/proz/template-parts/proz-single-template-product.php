<?php
$prod_id = get_the_ID();
$prod_title = get_the_title();
$prod_slug = get_post_field( 'post_name', $prod_id );
$prod_gallery = get_field('gallery');
$prod_tagline = get_field('tagline');
$prod_desc = get_field('short_description');
$total_prod_gallery = count($prod_gallery);
$prod_desc = get_field('short_description');
// To process title styling
$title_style = get_field('title_style');
$style = $title_style['prefix'];
$temp_first = explode(' ', $prod_title);
$first_word = $temp_first[0] . ' ';
$temp_title = str_replace($first_word, '', $prod_title);
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
<section class="single single-product">
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-12 col-md-11 px-4 py-5">
                <div class="product-inner">
                    <div class="product-thumbnail prod-col prod-col-1">
                    <?php
                    if( $prod_gallery && $total_prod_gallery > 0 ) {
                        if( $total_prod_gallery === 1 ) {
                            echo '<a href="'.$prod_gallery[0]['url'].'" data-elementor-open-lightbox="yes" data-elementor-lightbox-slideshow="product-gallery" data-elementor-lightbox-title="'.$prod_title.' - Image 01"><img src="'.$prod_gallery[0]['url'].'" class="single-thumbnail img-fluid w-100" alt="'.$prod_title.'"/></a>';
                        }
                        else {
                        ?>
                        <div class="swiper product-swiper">
                            <div class="swiper-wrapper">
                            <?php
                            $i = 1;
                            foreach( $prod_gallery as $gallery ) {
                                $index = str_pad($i, 2, '0', STR_PAD_LEFT);
                                $url = $gallery['url'];
                                $display_title = $prod_title . ' - Image ' . $index;
                                echo '<div class="swiper-slide"><a href="'.$url.'" data-elementor-open-lightbox="yes" data-elementor-lightbox-slideshow="product-gallery" data-elementor-lightbox-title="'.$display_title.'"></a></div>';
                                $i++;
                            }
                            ?>
                            </div>
                            <div class="product-nav">
                                <div class="prod-nav nav-prev"><i class="fa fa-chevron-left" aria-hidden="true"></i></div>
                                <div class="prod-nav nav-next"><i class="fa fa-chevron-right" aria-hidden="true"></i></div>
                            </div>
                            <div class="product-pagination"></div>
                        </div>
                        <?php
                        }
                    }
                    ?>
                    </div>
                    <div class="product-summary prod-col prod-col-2 text-start">
                        <h1 class="prod-title text-theme-blue mb-3"><?= $proccessed_title;?></h1>
                        <h3 class="prod-tagline text-theme-blue fw-700 mb-4"><?= $prod_tagline;?></h3>
                        <div class="prod-desc mb-4"><?= $prod_desc;?></div>
                        <?php
                        $meta01 = get_field('attributes');
                        $certs = $meta01['certificates'];
                        if( !empty($certs) ) {
                        echo '<div class="prod-meta meta-certs">';
                            echo '<ul>';
                            foreach( $certs as $cert ) {
                                echo '<li class="meta-item"><img src="'.$cert['item']['url'].'"/></li>';
                            }
                            echo '</ul>';
                        echo '</div>';
                        }
                        $colours = $meta01['colours'];
                        if( !empty($colours) ) {
                        echo '<div class="divider"></div>';
                        echo '<div class="prod-meta meta-colours">';
                            echo '<ul>';
                            foreach($colours as $colour) {
                                $code = $colour['colour_code'];
                                $label = $colour['colour_label'];
                                $name = $colour['colour_name'];
                                echo '<li class="meta-item">';
                                    echo '<span class="colour-palette" style="background-color: '.$code.'"></span>';
                                    if( !empty($label) ) {
                                        echo '<span class="colour-label">'.$label.'</span>';
                                    }
                                    echo '<span class="colour-name">'.$name.'</span>';
                                echo '</li>';
                            }
                            echo '</ul>';
                        echo '</div>';
                        }
                        ?>
                    </div>
                    <div class="product- prod-col prod-col-3">
                        
                        <?php
                        $meta02 = get_field('advantages');
                        // <div class="prod-meta meta-advantage">
                        //     <h4 class="mb-3"></h4>
                        //     <div class="meta-content"></div>
                        // </div>
                        ?>
                    </div>
                    <div class="product- prod-col prod-col-4">

                    </div>
                    <div class="product- prod-col prod-col-5">

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>