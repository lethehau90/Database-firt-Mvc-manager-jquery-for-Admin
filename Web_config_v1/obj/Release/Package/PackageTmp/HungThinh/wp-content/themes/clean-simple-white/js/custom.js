jQuery(document).ready(function($) {

	$('a.mobile-menu-toggle').on('click', function(e) {
		e.preventDefault();
		target = $(this).data('target');

		$(target).slideToggle(400);
	});

});