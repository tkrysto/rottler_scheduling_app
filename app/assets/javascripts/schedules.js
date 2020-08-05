$('#schedule .hour-box').click(function(){
	console.log('clicked');
	var techName = $(this).closest('.tech-col').find('.tech-name').text();
	var start = $(this).attr('data-start');
	var end = $(this).attr('data-end');
	var location = $(this).find('.deets .name').text(); 
	var last = $(this).prevAll('.scheduled').length ? $(this).prevAll('.scheduled').attr('data-end') : "the start of the day";
	var next = $(this).nextAll('.scheduled').length ? $(this).nextAll('.scheduled').attr('data-start') : "the end of the day";
	var price = $(this).attr('data-price');
	var city = $(this).attr('data-city');
	


	$('#schedule_deets').find('.name').html(techName);
	$('#schedule_deets').find('.start-time').html(start);
	$('#schedule_deets').find('.end-time').html(end);
	$('#schedule_deets').find('.jobsite').html(location);
	$('#schedule_deets').find('.last').html(last);
	$('#schedule_deets').find('.next').html(next);
	$('#schedule_deets').find('.city').html(city);
	$('#schedule_deets').find('.price').html("$"+price);

	if($(this).hasClass('scheduled')){
		$('#schedule_deets').find('.not-scheduled').hide();
		$('#schedule_deets').find('.scheduled').show();
	}else{
		$('#schedule_deets').find('.not-scheduled').show();
		$('#schedule_deets').find('.scheduled').hide();
	}

	$('#schedule_deets').modal('show');
});