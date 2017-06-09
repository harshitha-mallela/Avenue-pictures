<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Avenue Pictures</title>
</head>
<body>
<div id="login-form-wrap">
  <h2>Login</h2>
  
  <form id="login-form"method="post" action="LoginServlet">
    <p>
    <input type="text" id="email" name="email" placeholder="email"required><i class="validation"><span></span><span></span></i>
    </p>
    <p>
    <input type="password" id="password" name="password" placeholder="Password"required><i class="validation"><span></span><span></span></i>
    </p>
    <p>
    <input type="submit" id="login" value="Login">
    </p>
  </form>
  <div id = "create-account-wrap">
  <p>not a member?<a href = "signup.jsp">create account</a><p>
  </div>
</div><!--login-form-wrap-->

</body>
</html>

<style>
body {
	background-color: #58c791;
	font-size: 1.6rem;
	font-family: "Open Sans", sans-serif;
	color: #2b3e51;
}
h2 {
	font-weight:300;
	text-align:center;
}
p {
	position: relative;
}
a,
a:link,
a:visited,
a:active {
	color:#3ca9e2;
	transition: all 0.2s ease;
	&:focus,
	&:hover {
		color:#329dd5;
		transition: all 0.2s ease;
	}
}
#login-form-wrap {
	background-color: #fff;
	width: 35%;
	margin: 30px auto;
	text-align: center;
	padding:20px 0 0 0;
	border-radius: 4px;
	box-shadow: 0px 30px 50px 0px rgba(0, 0, 0, 0.2);
}
#login-form {
	padding:0 60px;
}
input {
	display: block;
	box-sizing: border-box;
	width: 100%;
	outline: none;
	height: 60px;
	line-height: 60px;
	border-radius: 4px;
}
input[type="text"],
input[type="password"]{
	width: 100%;
	padding: 0 0 0 10px;
	margin: 0;
	color: #8a8b8e;
	border: 1px solid #c2c0ca;
	font-style: normal;
	font-size: 16px;
	appearance: none;
	position: relative;
	display: inline-block;
	background: none;
	&:focus {
		border-color:#3ca9e2;
		&:invalid  {
			color:#cc1e2b;
			border-color:#cc1e2b;
		}
	}
	&:valid ~ .validation {
		display:block;
		border-color:#0C0;
		span {
			background: #0C0;
			position:absolute;
			border-radius: 6px;
			&:first-child {
				top: 30px;
				left: 14px;
				width: 20px;
				height: 3px;
				transform: rotate(-45deg);
			}
			&:last-child {
				top: 35px;
				left: 8px;
				width: 11px;
				height: 3px;
				transform: rotate(45deg);
			}
}
	}
}
.validation {
	display:none;
	position: absolute;
	content: " ";
	height:60px;
	width:30px;
	right:15px;
	top:0px;
}

input[type="submit"] {
	border: none;
	display:block;
	background-color:#58c791;
	color: #fff;
	font-weight: bold;
	text-transform:uppercase;
	cursor: pointer;
	transition: all 0.2s ease;
	font-size: 18px;
	position: relative;
	display: inline-block;
	cursor: pointer;
	text-align: center;
	&:hover {
		background-color:#329dd5;
		transition: all 0.2s ease;
	}
}
#create-account-wrap {
	background-color:#eeedf1;
	color:#8a8b8e;
	font-size:14px;
	width:100%;
	padding:10px 0;
	border-radius: 0 0 4px 4px;
}
</style>