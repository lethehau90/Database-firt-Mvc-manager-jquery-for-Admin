jQuery(document).ready(function() {

  	slide = jQuery('#slides').addClass('owl-carousel').owlCarousel({
  		items: 1, margin: 15, loop: true,
  		nav: true, navText: [],
  		mouseDrag: false, touchDrag: false, pullDrag: false, freeDrag: false,
  		autoplay: true, autoplaySpeed: 1500,
      navSpeed: 1500,
  	});

  	as_fix_info();

  	slide.on('translate.owl.carousel', function() {
  		jQuery('.owl-item.active .info').fadeOut(600);
  	});

  	slide.on('translated.owl.carousel', function() {
  		as_fix_info();
  	});



function as_fix_info() {
  w = jQuery('.owl-item.active .pic-item').width();
  iw = jQuery('.owl-item.active .pic-item img').width();
  p = (w - iw) / 2;
  jQuery('.owl-item.active .info').css('right', p +'px').fadeIn(600);
}

// var t;

// function as_hide_info() {
//     var index, elem;
//     jQuery('#slides .pic-item').each(function(ind) {
//         if (jQuery(this).css('z-index') > 0) {
//             index = ind;
//             elem = jQuery('#slides .pic-item:eq(' + ind + ') .info').eq(0);
//         }
//     });

//     clearTimeout(t);
//     elem.fadeIn('slow');
//     t = setTimeout(function() {
//         elem.fadeOut('slow');
//     }, 3000)

// }

// var delay = (function() {
//     var timer = 0;
//     return function(callback, ms) {
//         clearTimeout(timer);
//         timer = setTimeout(callback, ms);
//     };
// })();

// jQuery('#slides .pic-item img.wp-post-image').mouseenter(function() {
//     as_hide_info();
// });

jQuery("a[rel='lightbox']").each(function(e) {
    var title = jQuery(this).attr('title');
    jQuery(this).mouseover(
        function() {
            jQuery(this).attr('title', '');
        }).mouseout(
        function() {
            jQuery(this).attr('title', title);
        });
    jQuery(this).click(
        function() {
            jQuery(this).attr('title', title);
        }
    );
});

});