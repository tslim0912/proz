$(document).ready(function () {
    console.log('Global');
    if( $("a.fancybox[data-fancybox]")[0] ) {
        $("a.fancybox[data-fancybox]").fancybox();
    }
});