<%@ page import = "com.login.bean.MovieBean" %>
<%@ page import = "java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
  
  <script>
  $(document).ready(function() {
    $("#datepicker").datepicker();
  });
  </script>
</head>
<body>
<h1>Book your show</h1>
welcome  <%= (String)session.getAttribute("email")%>
<fieldset class="field_set">
<form name = "schedule-form" method = "post" action = "ScheduleServlet">
    <input id="datepicker" value="Choose a date" name = "date" class="calenderstyle"/>
<h4>Select Show timings:</h4>
<select name = "time">
  <option value="Morning 10:00am">Morning 10:00am</option>
  <option value="Afternoon 2:00pm">Afternoon 2:00pm</option>
  <option value=" Evening 6:00pm" >Evening 6:00pm</option>
  <option value="Night 9:30pm" >Night 9:30pm</option>
</select>
<h4>Select Movie:</h4>
<% 
ArrayList<MovieBean> mList = (ArrayList<MovieBean>)request.getAttribute("mList");
out.println("<table>"); 
for(MovieBean mb: mList){
		out.println(mb.getMovie_id() +  "  " + mb.getMovie_name() +"<br/>");
		
		
 }
out.println("</table>");
%>
<input type="submit" value="Proceed">
</form>
</fieldset>
<center>

</center> 
<a href="LogoutServlet"class=buttons>Logout</a>
</body>

</html>

<style>
.calenderstyle{
   
   color : green;
}
h1{
 color:#cc9900;
  text-align:center;
}
h4{
  text-align:left;
  color:#cc9900;
}
.field_set{
  margin-left:38%;
  width:300px;
  height:300px;
}
.button{
  background-color: #ff8533;
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    position : center;
}
.buttons{
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    margin: 4px 2px;
    cursor: pointer;
    position : absolute;
    right:30px;
    top:50px;
}

body {
    background-image: url("back.jpg");
    background-image :no-repeat;
    min-height :50%;
    background-position :center;
    color:white;
}

</style>