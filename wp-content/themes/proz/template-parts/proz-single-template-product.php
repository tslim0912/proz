<?php
$prod_id = get_the_ID();
$prod_title = get_the_title();
$prod_slug = get_post_field( 'post_name', $prod_id );
$prod_gallery = get_field('gallery');
$total_prod_gallery = count($prod_gallery);
$prod_desc = get_field('short_description');
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
                    <div class="product- prod-col prod-col-2">
                        Summary
                    </div>
                    <div class="product- prod-col prod-col-3">
                    
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