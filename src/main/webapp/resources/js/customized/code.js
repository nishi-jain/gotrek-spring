$(document).ready(function(){


	//managesession();   	
	change_image();

/*	$.get('updatetrek',function(responseJson){
		console.log(responseJson.TrekList);
		$.each(responseJson.TrekList,function(index,TrekList){ 	
			console.log(TrekList.treksum);
			console.log(TrekList.imgurl);
			var img = $('<img class="demo-trkpic">');
			img.attr('src',TrekList.imgurl);
			img.appendTo('.position-animate'); 
			$('<span/>', {
				'class':'demo',
			}).text(TrekList.treksum).appendTo('.position-animate');
		});
	});*/
});
var i=2;
function change_image()
{	
	if(i==11)
	{
		i=1;
	}

	var img="resources/images/"+"t"+i+'.jpg';
	document.getElementById("img1").src=img;
	i++;
	setTimeout("change_image()",4000);
}
function managesession(){

	var usertest_email = "${usertest.email}";
	var usertest_pass = "${usertest.password}";
	if (usertest_email == "invalid") {
		alert("You are not a existing user.Please login first.");
	}
	else if (usertest_pass == "invalid") {
		alert("You have entered an incorrect password");
	}
}
