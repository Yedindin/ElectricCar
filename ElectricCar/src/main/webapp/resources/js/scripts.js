/*!
* Start Bootstrap - Grayscale v6.0.4 (https://startbootstrap.com/theme/grayscale)
* Copyright 2013-2021 Start Bootstrap
* Licensed under MIT (https://github.com/StartBootstrap/startbootstrap-grayscale/blob/master/LICENSE)
*/
(function ($) {
    "use strict"; // Start of use strict

    // Smooth scrolling using anime.js
    $('a.js-scroll-trigger[href*="#"]:not([href="#"])').on('click', function () {
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
    $(".js-scroll-trigger").click(function () {
        $(".navbar-collapse").collapse("hide");
    });

    // Activate scrollspy to add active class to navbar items on scroll
    $("body").scrollspy({
        target: "#mainNav",
        offset: 100,
    });

    // Collapse Navbar
    var navbarCollapse = function () {
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
			url : "charger/sigoongooContent",
			type : "POST",
			async : false,
			data : {
				id : $('#input_special_do_id').html()
			},
			success : function(data) {
				console.log(data)
			},
			error : function(request, status, error) {
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
			url : "./charger/sigoongooContent",
			type : "POST",
			async : false,
			data : {
				id : id
			},
			success : function(data) {
				console.log(data);
				$('#sigoongoo').html(data);
				console.log($('#sigoongoo').html());
			},
			error : function(request, status, error) {
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