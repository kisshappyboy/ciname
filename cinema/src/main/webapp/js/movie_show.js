/**
 * @author ixingkongyue
 */
$(document).ready(function() {
	$("#pictures_show_4").css("display", "none");
	$("#pre_view_show_4").css("display", "none");
});
var editor;
KindEditor.ready(function(K) {
		editor = K.create('textarea[name="publish_comment_4"]', {
			allowFileManager : true
		});
	});
function changeBgContent_4(choice) {
	switch(choice) {
		case "pre_view_4":
			$("#pre_view_4").css("background", "url('image/movie_show/navigation_bg.jpg') repeat-x");
			$("#movie_describe_4").css("background", "url('image/movie_show/navigation_bg_change.jpg') repeat-x");
			$("#pictures_4").css("background", "url('image/movie_show/navigation_bg_change.jpg') repeat-x");
			$("#pictures_show_4").css("display", "none");
			$("#movie_describe_show_4").css("display", "none");
			$("#pre_view_show_4").css("display", "");
			break;
		case "pictures_4":
			$("#pre_view_4").css("background", "url('image/movie_show/navigation_bg_change.jpg') repeat-x");
			$("#movie_describe_4").css("background", "url('image/movie_show/navigation_bg_change.jpg') repeat-x");
			$("#pictures_4").css("background", "url('image/movie_show/navigation_bg.jpg') repeat-x");
			$("#pictures_show_4").css("display", "");
			$("#movie_describe_show_4").css("display", "none");
			$("#pre_view_show_4").css("display", "none");

			break;
		case "movie_describe_4":
			$("#pre_view_4").css("background", "url('image/movie_show/navigation_bg_change.jpg') repeat-x");
			$("#movie_describe_4").css("background", "url('image/movie_show/navigation_bg.jpg') repeat-x");
			$("#pictures_4").css("background", "url('image/movie_show/navigation_bg_change.jpg') repeat-x");
			$("#pictures_show_4").css("display", "none");
			$("#movie_describe_show_4").css("display", "");
			$("#pre_view_show_4").css("display", "none");

			break;
	}

}
