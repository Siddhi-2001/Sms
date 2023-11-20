<%@ page import="java.sql.*"%>
<html>
<head>
<title>SMS</title>
<style>
.nav{background-color:black;}
.nav a{
color:white;
text-decoration:none;
margin:5%;
}
*{font-family:Georgia; font-size:40px;
 margin:0;
 padding: 0;
}

body {
 background-image: url("css.jpg");
 background-repeat:no-repeat;
 background-size:1550px 750px;
}
.form-box {
	background-color: rgba(0, 0, 0, 0.5);
	margin: auto auto;
	padding: 40px;
	border-radius: 5px;
	box-shadow: 0 0 10px #000;
	position: absolute;
	top: 10px;
	bottom: 0;
	left: 0;
	right: 0;
	width: 300px;
	height: 200px;
	display:flex;
}

.button {background-color:#00CCCC;
margin: 10px 0px;
	border: none;
	padding: 10px;
	border-radius: 5px;
	width: 100%;
margin-left:30px;
}
</style>
</head>
<body>
<center>
<div class="nav">
<a href="home.jsp">ADD</a>
<a href="View.jsp">VIEW</a>
<a href="Update.jsp">UPDATE</a>
<a href="Delete.jsp">DELETE</a>
<a href="logout.jsp">LOGOUT</a>
</div>
<script>
  function confirmLogout() {
    return confirm("Are you sure you want to logout?");
  }
</script>
<%
String un=(String)session.getAttribute("un");
if(un==null)
{
response.sendRedirect("index.jsp");
}
%>
<br>
<div class="form-box">
<form>
<input type="submit" value="LOGOUT" name="btn" onclick="return confirmLogout()" class="button"/>
</form>
</div>
<%
if(request.getParameter("btn")!=null)
{
session.invalidate();
response.sendRedirect("index.jsp");
}
%>
</center>
</body>
</html>

