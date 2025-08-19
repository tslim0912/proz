$(document).ready(function () {
    console.log('Global');
    // if( $(".fancybox")[0] ) {
    //     $(".fancybox").fancybox();
    // }
    var $sirimReport;
    if( $('#sirim-reports')[0] ) {
        $sirimReport = new Swiper('#sirim-reports', {
            slidesPerView: 4,
            loop: false,
            spaceBetween: 24,
            slidesOffsetBefore: 0,
            slidesOffsetAfter: 0,
            autoplay: {
                delay: 8000,
                disableOnInteraction: false,
            },
            pagination: {
                el: ".sirim-report-pagination",
                clickable: true,
            },
            breakpoints: {
                0: {
                    slidesPerView: "auto",
                    spaceBetween: 24,
                },
                768: {
                    slidesPerView: 4,
                    spaceBetween: 24,
                }
            }
        });
    }
});