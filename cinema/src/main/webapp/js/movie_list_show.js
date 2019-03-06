/**
 * @author ixingkongyue
 */
 img_array=[];
  img_array[0]="image1.jpg";
  img_array[1]="image2.jpg";
  img_array[2]="image3.jpg";
   link_array=[];
  link_array[0]="link_1";
  link_array[1]="link_2";
  
$(document).ready(function(){
  	$("#future_list_4").css("display","none");
  link_array[2]="link_3";
  pictureAutoChange_4(img_array,link_array);
}
);
var i=0;
function pictureAutoChange_4(img_array,link_array){
play = setInterval(function(){
	if(i==0){
	$(".movie_list_show_4").get(2).style.color="#808080";	
	}else{
	$(".movie_list_show_4").get(i-1).style.color="#808080";
	}
	$(".movie_list_show_4").get(i).style.color="#0ff";
	$("#image_4").attr("src","image/movie_list/"+img_array[i]);
	$("#a_4").attr("href",link_array[i]);
	i++;
	if(i>=3){
		i=0;
	}
	
},1500);
var play;
$("#picture_4").mouseover(function() {
		 clearInterval(play);
	});
	$("#picture_4").mouseout(function() {
		play = setInterval(function(){
	if(i==0){
	$(".movie_list_show_4").get(2).style.color="#808080";	
	}else{
	$(".movie_list_show_4").get(i-1).style.color="#808080";
	}
	$(".movie_list_show_4").get(i).style.color="#0ff";
	$("#image_4").attr("src","image/movie_list/"+img_array[i]);
	$("#a_4").attr("href",link_array[i]);
	i++;
	if(i>=3){
		i=0;
	}
	
},1500);
		});
		
}

function changePicture_4(a){
 	$(".movie_list_show_4").get(a).style.color="#0ff";
	$("#image_4").attr("src","image/movie_list/"+img_array[a]);
	$("#a_4").attr("href",link_array[a]);
	
}
function clearPicture_4(a){
	$(".movie_list_show_4").get(a).style.color="#808080";
}
function changeBg_4() {
	$("#now_4").css("background","url('image/movie_list/navigation_bg.jpg')  repeat-x");
	$("#future_4").css("background","url('image/movie_list/navigation_bg_change.jpg')  repeat-x");
	$("#now_list_4").css("display","");
	$("#future_list_4").css("display","none");
}
function clearBg_4() {
	$("#now_4").css("background","url('image/movie_list/navigation_bg_change.jpg')  repeat-x");
	$("#future_4").css("background","url('image/movie_list/navigation_bg.jpg')  repeat-x");
	$("#now_list_4").css("display","none");
	$("#future_list_4").css("display","");

}
