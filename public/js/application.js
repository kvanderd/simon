$(document).ready(function() {
  $('#get_color').on('click', function(e){
		e.preventDefault();
		$.ajax({
			url:  '/color',
			type: 'POST',
			dataType: "json"
		}).done(function(response){
			console.log(response);
			$('color_me, li:nth-child(' + response.cell +')').css('background-color', response.color)
	  });
  });
}); 


