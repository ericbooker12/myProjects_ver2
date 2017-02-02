$( document ).ready(function() {
    console.log( "ready!3" );

	changeImage('#img-btn-1', '#img1', '#img2');
	changeImage('#img-btn-2', '#img3', '#img4');
	changeImage('#img-btn-3', '#img5', '#img6');
	changeImage('#img-btn-4', '#img7', '#img8');

});

var changeImage = function(btn, img1, img2) {
	$(btn).on('click', function(event){
		event.preventDefault();
		console.log( "Button Clicked" );

		if ($(img1).hasClass('show')) {
			$(img1).removeClass('show').addClass('hidden');
			$(img2).removeClass('hidden').addClass('show');
		} else {
			$(img2).removeClass('show').addClass('hidden');
			$(img1).removeClass('hidden').addClass('show');
		}
	});
}
