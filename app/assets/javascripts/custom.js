$(document).ready(function(){
	var $content = $("#micropost_content");

	// Display count of characters (under 140) left for user
	$content.keyup(function(){
		var display;
		var input = $content.val();
		var characters_left = 140 - input.length;
		if(characters_left < 0) {
			display = 'Too many characters';
		} else {
			display = characters_left + ' characters left';
		}

		$("#character_count").html(display);
	});
});
