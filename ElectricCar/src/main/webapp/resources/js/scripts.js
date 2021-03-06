/*!
* Start Bootstrap - Grayscale v6.0.4 (https://startbootstrap.com/theme/grayscale)
* Copyright 2013-2021 Start Bootstrap
* Licensed under MIT (https://github.com/StartBootstrap/startbootstrap-grayscale/blob/master/LICENSE)
*/
(function($) {
	"use strict"; // Start of use strict

	// Smooth scrolling using anime.js
	$('a.js-scroll-trigger[href*="#"]:not([href="#"])').on('click', function() {
		if (
			location.pathname.replace(/^\//, "") ==
			this.pathname.replace(/^\//, "") &&
			location.hostname == this.hostname
		) {
			var target = $(this.hash);
			target = target.length ?
				target :
				$("[name=" + this.hash.slice(1) + "]");
			if (target.length) {
				anime({
					targets: 'html, body',
					scrollTop: target.offset().top - 72,
					duration: 1000,
					easing: 'easeInOutExpo'
				});
				return false;
			}
		}
	});

	// Closes responsive menu when a scroll trigger link is clicked
	$(".js-scroll-trigger").click(function() {
		$(".navbar-collapse").collapse("hide");
	});

	// Activate scrollspy to add active class to navbar items on scroll
	$("body").scrollspy({
		target: "#mainNav",
		offset: 100,
	});

	// Collapse Navbar
	var navbarCollapse = function() {
		if ($("#mainNav").offset().top > 100) {
			$("#mainNav").addClass("navbar-shrink");
		} else {
			$("#mainNav").removeClass("navbar-shrink");
		}
	};
	// Collapse now if page is not at top
	navbarCollapse();
	// Collapse the navbar when page is scrolled
	$(window).scroll(navbarCollapse);
})(jQuery); // End of use strict

function findSigoongoo_id() {
	//$('#input_special_do_id').val()var special_do_id = $('#input_special_do_id').val();

	$.ajax({
		url: "charger/sigoongooContent",
		type: "POST",
		async: false,
		data: {
			id: $('#input_special_do_id').html()
		},
		success: function(data) {
			console.log(data)
		},
		error: function(request, status, error) {
			console.log("code:" + request.status + "\n"
				+ "message:" + request.responseText + "\n"
				+ "error:" + error);
		}
	});
}
function findSigoongoo_id_test() {
	var special_do_id = $('#input_special_do_id').html();

	var id = document.getElementById("input_special_do_id").value;
	//document.getElementById("demo").innerHTML = "You selected: " + id;

	$.ajax({
		url: "./charger/sigoongooContent",
		type: "POST",
		async: false,
		data: {
			id: id
		},
		success: function(data) {
			console.log(data);
			$('#sigoongoo').html(data);
			console.log($('#sigoongoo').html());
		},
		error: function(request, status, error) {
			console.log("code:" + request.status + "\n"
				+ "message:" + request.responseText + "\n"
				+ "error:" + error);
		}
	});
}
/*
function Sigoongoo_id() {
  var x = document.getElementById("input_special_do_id").value;
  document.getElementById("demo").innerHTML = "You selected: " + x;	
}*/

function findCharger_id() {
	//$('#findCharger').val()
	//var special_do_id = $('#findCharger').val();
	var special_do_id = document.getElementById("input_special_do_id").value;
	var sigoongoo_id = document.getElementById("input_sigoongoo_id").value;
	//document.getElementById("demo").innerHTML = "You selected: " + x;	

	$.ajax({
		url: "./charger/chargerContent",
		type: "POST",
		async: false,
		data: {
			special_do_id: special_do_id,
			sigoongoo_id: sigoongoo_id
		},
		success: function(data) {
			console.log(data)
			$('#charger').html(data);
			console.log($('#charger').html());
			$("#resultCharger").show();			
		},
		error: function(request, status, error) {
			console.log("code:" + request.status + "\n"
				+ "message:" + request.responseText + "\n"
				+ "error:" + error);
		}
	});
}

function findResult_id() {
	//$('#findCharger').val()
	//var special_do_id = $('#findCharger').val();
	var brand_first = document.getElementById("brand_first").value;
	var brand_second = document.getElementById("brand_second").value;
	var carType = document.getElementById("carType").value;
	var minprice = document.getElementById("minprice").value;
	var maxprice = document.getElementById("maxprice").value;
	var subsidy_yn = document.getElementById("subsidy_yn").value;
	var input_sigoongoo_id = document.getElementById("special_do_id").value;

	$.ajax({
		url: "./search/result",
		type: "POST",
		async: false,
		data: {
			brand_first: brand_first,
			brand_second: brand_second,
			carType: carType,
			maxprice: maxprice,
			minprice: minprice,
			subsidy_yn: subsidy_yn,
			input_sigoongoo_id: input_sigoongoo_id
		},
		success: function(data) {
			console.log(data)
			$('#result_car').html(data);
			console.log($('#result_car').html());
			$("#result_car").show();
		},
		error: function(request, status, error) {
			console.log("code:" + request.status + "\n"
				+ "message:" + request.responseText + "\n"
				+ "error:" + error);
			alert('????????? ?????? ??????????????????!');
		}
	});
}

$(document).ready(function() {

	//???????????? ?????? ????????? ??? ???????????? ????????????
	$('#writeReview').click(function() {
		if ($('#writeRecomInfo').css('display') == 'none') {
			$("#writeRecomInfo").show();
			$("#writeReview").hide();
		} else {
			$("#writeRecomInfo").hide();
		}
	});

	//???????????? ???????????? ??? ??? ???????????? ???????????????
	$('#cancleReview').click(function() {
		if ($('#writeRecomInfo').css('display') != 'none') {
			$("#writeRecomInfo").hide();
			$("#writeReview").show();
		}
	});
	
})


function writeReview() {

	var category_id = document.getElementById("category_id").value;
	var title = document.getElementById("title").value;
	var url = document.getElementById("url").value;
	var content = document.getElementById("content").value;

	$.ajax({
		url: "./recomInfo/recomInfoContent",
		type: "POST",
		async: false,
		data: {
			category_id: category_id,
			title: title,
			url: url,
			content: content,
		},
		success: function(data) {
			console.log(data)
			$('#recomInfoResult').html(data);
			console.log($('#recomInfoResult').html());
			alert('?????? ?????????????????????!')
			$("#writeRecomInfo").hide();
			$("#writeReview").show();
			$("#recomInfoList").scrollTop($(document).height());
			$("#recomInfoList").scrollTop($("#recomInfoList")[0].scrollHeight);
		},
		error: function(request, status, error) {
			console.log("code:" + request.status + "\n"
				+ "message:" + request.responseText + "\n"
				+ "error:" + error);
			alert('????????? ?????? ??????????????????!')	
		}
	});
}

function shareTwitter() {
    var sendText = "????????????"; // ????????? ?????????
    var sendUrl = "pickcarchu.herokuapp.com/search//"; // ????????? URL
    window.open("https://twitter.com/intent/tweet?text=" + sendText + "&url=" + sendUrl);
}
function shareFacebook() {
    var sendUrl = "pickcarchu.herokuapp.com/search//"; // ????????? URL
    window.open("http://www.facebook.com/sharer/sharer.php?u=" + sendUrl);
}
