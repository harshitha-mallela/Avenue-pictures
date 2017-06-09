<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<h1>Avenue Pictures</h1>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>online tickets</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<div class="w3-content w3-display-container" align="center"></div>
</head>
<body>

	<div class="slideshow-container">

		<div class="mySlides fade">

			<img src="sc.jpg" width="900" height="600">
		</div>

		<div class="mySlides fade">

			<img src="rvc.jpg" width="900" height="600">

		</div>

		<div class="mySlides fade">

			<img src="w3.jpg" width="900" height="600">

		</div>

	</div>
	<br>

	<div style="text-align: center">
		<span class="dot"></span> <span class="dot"></span> <span class="dot"></span>
	</div>
	
<body>
	<center>
		<a href="login.jsp" class="button">BOOK TICKETS</a>
	</center>
</body>
<script>
	var slideIndex = 0;
	showSlides();

	function showSlides() {
		var i;
		var slides = document.getElementsByClassName("mySlides");
		var dots = document.getElementsByClassName("dot");
		for (i = 0; i < slides.length; i++) {
			slides[i].style.display = "none";
		}
		slideIndex++;
		if (slideIndex > slides.length) {
			slideIndex = 1
		}
		for (i = 0; i < dots.length; i++) {
			dots[i].className = dots[i].className.replace(" active", "");
		}
		slides[slideIndex - 1].style.display = "block";
		dots[slideIndex - 1].className += " active";
		setTimeout(showSlides, 2000); // Change image every 2 seconds
	}
</script>



<link rel="stylesheet" type="text/css" href="ont.css">

</html>
