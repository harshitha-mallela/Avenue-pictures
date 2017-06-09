<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
  <div class="container">
    <div id="logbox">
      <form id="signup" method="post" action="RegisterServlet">
        <h1>Create an account</h1>
        <input class="input pass" name="username" type="text" placeholder="What's your username?" pattern="^[\w]{3,16}$" autofocus="autofocus"required="required"/>
        <input class="input pass" name="password" type="password" placeholder="Choose a password"required="required"/>
        <input class="input pass"  type="password" placeholder="Confirm password" required="required"/>
        <input class="input pass" name="email" type="text" placeholder="Email address"/>
        <input class="inputButton" type="submit" value="Sign me up!"/>
      </form>
    </div>
  </div> 
</body>
</html>
<style>
$fonts: "Open Sans", Helvetica, sans-serif;

@mixin border-radius($radius) {
    -webkit-border-radius: $radius;
    -moz-border-radius: $radius;
    -ms-border-radius: $radius;
    border-radius: $radius;
}

@mixin box-shadow($top, $left, $blur, $color) {
    -webkit-box-shadow: $top $left $blur $color;
    -moz-box-shadow: $top $left $blur $color;
    box-shadow: $top $left $blur $color;
}

::selection {
    background-color: #b5e2e7;
}

::-moz-selection {
    background-color: #8ac7d8;
}

body {
    background: #58c791;
}

.container {
    display: -webkit-flex;
    display: flex;
    height: 100%;
}

#logbox {
    margin: 50px auto;
    width: 340px;
    background-color: #fff;
    @include border-radius(4px);
    @include box-shadow(0, 1px, 5px, rgba(0,0,0,0.25));
}

h1 {
    text-align: center;
    font-size: 175%;
    color: #757575;
    font-weight: 300;
}

h1, input {
    font-family: $fonts;
}

.input {
    width: 75%;
    height: 50px;
    display: block;
    margin: 0 auto 15px;
    padding: 0 15px;
    border: none;
    border-bottom: 2px solid #ebebeb;
    &:focus {
        outline: none;
        border-bottom-color: #58c791 !important;
    }
    &:hover {
        border-bottom-color: #dcdcdc;
    }
    &:invalid {
        box-shadow: none;
    }
}

.pass:-webkit-autofill {
    -webkit-box-shadow: 0 0 0 1000px white inset;
}
.inputButton {
    position: relative;
    width: 85%;
    height: 50px;
    display: block;
    margin: 30px auto 30px;
    @include border-radius(5px);
    color: white;
    background-color: #58c791;
    border: none;
    @include box-shadow(0, 5px, 0, #3aad73);
    &:hover {
        top: 2px;
        @include box-shadow(0, 3px, 0, #3aad73);
    }
    &:active {
        top: 5px;
        box-shadow: none;
    }
    &:focus {
        outline: none;
    }
}
</style>