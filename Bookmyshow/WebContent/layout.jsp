<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<form name="reservation" method="post" action="LayoutServlet">
	<link rel="stylesheet" type="text/css" href="layout.css" />
	<body>
		<h1>Select your seats</h1>
		<%=(String) session.getAttribute("email")%>

	</body>
	<a href="LogoutServlet" class=logoutbutton>Logout</a>
	<fieldset class="field_set">
		<section id="seats">
		<h5>DIAMOND</h5>

		<input id="seat-1" class="seat-select" type="checkbox" value="a1"
			name="seat" /> <label for="seat-1" class="seat"><h6>a1</h6></label>
		<input id="seat-2" class="seat-select" type="checkbox" value="a2"
			name="seat" /> <label for="seat-2" class="seat"><h6>a2</h6></label>
		<input id="seat-3" class="seat-select" type="checkbox" value="a3"
			name="seat" /> <label for="seat-3" class="seat"><h6>a3</h6></label>
		<input id="seat-4" class="seat-select" type="checkbox" value="a4"
			name="seat" /> <label for="seat-4" class="seat"><h6>a4</h6></label>
		<input id="seat-5" class="seat-select" type="checkbox" value="a5"
			name="seat" /> <label for="seat-5" class="seat"><h6>a5</h6></label>
		<input id="seat-6" class="seat-select" type="checkbox" value="a6"
			name="seat" /> <label for="seat-6" class="seat"><h6>a6</h6></label>
		<input id="seat-7" class="seat-select" type="checkbox" value="a7"
			name="seat" /> <label for="seat-7" class="seat"><h6>a7</h6></label>
		<input id="seat-8" class="seat-select" type="checkbox" value="a8"
			name="seat" /> <label for="seat-8" class="seat"><h6>a8</h6></label>
		</br>

		<input id="seat-9" class="seat-select" type="checkbox" value="b1"
			name="seat" /> <label for="seat-9" class="seat"><h6>b1</h6></label>
		<input id="seat-10" class="seat-select" type="checkbox" value="b2"
			name="seat" /> <label for="seat-10" class="seat"><h6>b2</h6></label>
		<input id="seat-11" class="seat-select" type="checkbox" value="b3"
			name="seat" /> <label for="seat-11" class="seat"><h6>b3</h6></label>
		<input id="seat-12" class="seat-select" type="checkbox" value="b4"
			name="seat" /> <label for="seat-12" class="seat"><h6>b4</h6></label>
		<input id="seat-13" class="seat-select" type="checkbox" value="b5"
			name="seat" /> <label for="seat-13" class="seat"><h6>b5</h6></label>
		<input id="seat-14" class="seat-select" type="checkbox" value="b6"
			name="seat" /> <label for="seat-14" class="seat"><h6>b6</h6></label>
		<input id="seat-15" class="seat-select" type="checkbox" value="b7"
			name="seat" /> <label for="seat-15" class="seat"><h6>b7</h6></label>
		<input id="seat-16" class="seat-select" type="checkbox" value="b8"
			name="seat" /> <label for="seat-16" class="seat"><h6>b8</h6></label>
		</br>

		<h5>GOLD</h5>

		<input id="seat-17" class="seat-select" type="checkbox" value="c1"
			name="seat" /> <label for="seat-17" class="seat"><h6>c1</h6></label>
		<input id="seat-18" class="seat-select" type="checkbox" value="c2"
			name="seat" /> <label for="seat-18" class="seat"><h6>c2</h6></label>
		<input id="seat-19" class="seat-select" type="checkbox" value="c3"
			name="seat" /> <label for="seat-19" class="seat"><h6>c3</h6></label>
		<input id="seat-20" class="seat-select" type="checkbox" value="c4"
			name="seat" /> <label for="seat-20" class="seat"><h6>c4</h6></label>
		<input id="seat-21" class="seat-select" type="checkbox" value="c5"
			name="seat" /> <label for="seat-21" class="seat"><h6>c5</h6></label>
		<input id="seat-22" class="seat-select" type="checkbox" value="c6"
			name="seat" /> <label for="seat-22" class="seat"><h6>c6</h6></label>
		<input id="seat-23" class="seat-select" type="checkbox" value="c7"
			name="seat" /> <label for="seat-23" class="seat"><h6>c7</h6></label>
		<input id="seat-24" class="seat-select" type="checkbox" value="c8"
			name="seat" /> <label for="seat-24" class="seat"><h6>c8</h6></label>
		</br>

		<input id="seat-25" class="seat-select" type="checkbox" value="d1"
			name="seat" /> <label for="seat-25" class="seat"><h6>d1</h6></label>
		<input id="seat-26" class="seat-select" type="checkbox" value="d2"
			name="seat" /> <label for="seat-26" class="seat"><h6>d2</h6></label>
		<input id="seat-27" class="seat-select" type="checkbox" value="d3"
			name="seat" /> <label for="seat-27" class="seat"><h6>d3</h6></label>
		<input id="seat-28" class="seat-select" type="checkbox" value="d4"
			name="seat" /> <label for="seat-28" class="seat"><h6>d4</h6></label>
		<input id="seat-29" class="seat-select" type="checkbox" value="d5"
			name="seat" /> <label for="seat-29" class="seat"><h6>d5</h6></label>
		<input id="seat-30" class="seat-select" type="checkbox" value="d6"
			name="seat" /> <label for="seat-30" class="seat"><h6>d6</h6></label>
		<input id="seat-31" class="seat-select" type="checkbox" value="d7"
			name="seat" /> <label for="seat-31" class="seat"><h6>d7</h6></label>
		<input id="seat-32" class="seat-select" type="checkbox" value="d8"
			name="seat" /> <label for="seat-32" class="seat"><h6>d8</h6></label>
		</br>

		<input id="seat-33" class="seat-select" type="checkbox" value="e1"
			name="seat" /> <label for="seat-33" class="seat"><h6>e1</h6></label>
		<input id="seat-34" class="seat-select" type="checkbox" value="e2"
			name="seat" /> <label for="seat-34" class="seat"><h6>e2</h6></label>
		<input id="seat-35" class="seat-select" type="checkbox" value="e3"
			name="seat" /> <label for="seat-35" class="seat"><h6>e3</h6></label>
		<input id="seat-36" class="seat-select" type="checkbox" value="e4"
			name="seat" /> <label for="seat-36" class="seat"><h6>e4</h6></label>
		<input id="seat-37" class="seat-select" type="checkbox" value="e5"
			name="seat" /> <label for="seat-37" class="seat"><h6>e5</h6></label>
		<input id="seat-38" class="seat-select" type="checkbox" value="e6"
			name="seat" /> <label for="seat-38" class="seat"><h6>e6</h6></label>
		<input id="seat-39" class="seat-select" type="checkbox" value="e7"
			name="seat" /> <label for="seat-39" class="seat"><h6>e7</h6></label>
		<input id="seat-40" class="seat-select" type="checkbox" value="e8"
			name="seat" /> <label for="seat-40" class="seat"><h6>e8</h6></label>
		</br>

		<h5>SILVER</h5>

		<input id="seat-41" class="seat-select" type="checkbox" value="f1"
			name="seat" /> <label for="seat-41" class="seat"><h6>f1</h6></label>
		<input id="seat-42" class="seat-select" type="checkbox" value="f2"
			name="seat" /> <label for="seat-42" class="seat"><h6>f2</h6></label>
		<input id="seat-43" class="seat-select" type="checkbox" value="f3"
			name="seat" /> <label for="seat-43" class="seat"><h6>f3</h6></label>
		<input id="seat-44" class="seat-select" type="checkbox" value="f4"
			name="seat" /> <label for="seat-44" class="seat"><h6>f4</h6></label>
		<input id="seat-45" class="seat-select" type="checkbox" value="f5"
			name="seat" /> <label for="seat-45" class="seat"><h6>f5</h6></label>
		<input id="seat-46" class="seat-select" type="checkbox" value="f6"
			name="seat" /> <label for="seat-46" class="seat"><h6>f6</h6></label>
		<input id="seat-47" class="seat-select" type="checkbox" value="f7"
			name="seat" /> <label for="seat-47" class="seat"><h6>f7</h6></label>
		<input id="seat-48" class="seat-select" type="checkbox" value="f8"
			name="seat" /> <label for="seat-48" class="seat"><h6>f8</h6></label>
		</br>


		<input id="seat-49" class="seat-select" type="checkbox" value="g1"
			name="seat" /> <label for="seat-49" class="seat"><h6>g1</h6></label>
		<input id="seat-50" class="seat-select" type="checkbox" value="g2"
			name="seat" /> <label for="seat-50" class="seat"><h6>g2</h6></label>
		<input id="seat-51" class="seat-select" type="checkbox" value="g3"
			name="seat" /> <label for="seat-51" class="seat"><h6>g3</h6></label>
		<input id="seat-52" class="seat-select" type="checkbox" value="g4"
			name="seat" /> <label for="seat-52" class="seat"><h6>g4</h6></label>
		<input id="seat-53" class="seat-select" type="checkbox" value="g5"
			name="seat" /> <label for="seat-53" class="seat"><h6>g5</h6></label>
		<input id="seat-54" class="seat-select" type="checkbox" value="g6"
			name="seat" /> <label for="seat-54" class="seat"><h6>g6</h6></label>
		<input id="seat-55" class="seat-select" type="checkbox" value="g7"
			name="seat" /> <label for="seat-55" class="seat"><h6>g7</h6></label>
		<input id="seat-56" class="seat-select" type="checkbox" value="g8"
			name="seat" /> <label for="seat-56" class="seat"><h6>g8</h6></label>
		</br>



		</section>
	</fieldset>
	<input type="submit" value="confirm seats" class="confirmseats" />
</form>
</html>
