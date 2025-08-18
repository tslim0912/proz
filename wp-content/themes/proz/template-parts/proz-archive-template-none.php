<?php
$post_type = get_query_var( 'post_type' );
$post_type_label = get_query_var( 'post_type_label' );
if( $post_type == 'news-events' ) {
    echo '<div class="grid-item grid-item-empty"><div class="grid-item-inner"><h4>There is no '.$post_type_label.' found!</h4></div></div>';
}
else {
    echo '<div class="grid-item grid-item-empty"><div class="grid-item-inner"><h4>There is no post found!</h4></div></div>';
}
?>