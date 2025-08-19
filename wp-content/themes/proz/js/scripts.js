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
            spaceBetween: 0,
            slidesOffsetBefore: 13,
            slidesOffsetAfter: 13,
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
                    spaceBetween: 25,
                },
                768: {
                    slidesPerView: 4,
                    spaceBetween: 0,
                }
            }
        });
    }
});