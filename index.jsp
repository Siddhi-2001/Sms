<%@ page import="java.sql.*" %>
<html>
<head>
<title>SMS</title>
<style>
*{font-family:Georgia; font-size:40px;
 margin:0;
 padding: 0;
}
.nav a{
color:black;
}

a:hover{
color:#66FFFF;
}

a:active{
color:#0080FF;
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
	top: 0;
	bottom: 0;
	left: 0;
	right: 0;
	width: 500px;
	height: 500px;
	display:flex;
	color:#66FFFF;
}
.container input {
	margin: 10px 0px;
	border: none;
	padding: 10px;
	border-radius: 5px;
	width: 100%;
	background:transparent;	
	border-bottom:1px solid #555;
	color:#66FFFF;
}
.button {background-color:#00CCCC;
margin: 10px 0px;
	border: none;
	padding: 10px;
	border-radius: 5px;
	width: 100%;
}
</style>
</head>
<body>
<center>
<div class="form-box">
<form method="POST">
<div class="container">
<input type="text" name="un" placeholder="enter username" required/>
<br><br>
<input type="password" name="pw" placeholder="enter password" required/>
<br><br>
</div>
<input type="submit" value="LOGIN" name="btn" class="button"/>
<br><br>
<div class="nav">
<label>New User??  </label><a  href="Signup.jsp">SignUp</a></div>
<%
if(request.getParameter("btn") != null)
{
String un = request.getParameter("un");
String pw = request.getParameter("pw");
try
{
DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
String url = "jdbc:mysql://localhost:3306/sms_23july2023";
Connection con = DriverManager.getConnection(url,"root","abc123");
String sql = "select *from user where un=? and pw=?";
PreparedStatement pst = con.prepareStatement(sql);
pst.setString(1,un);
pst.setString(2,pw);
ResultSet rs = pst.executeQuery();
if(rs.next())
{
session.setAttribute("un",un);
response.sendRedirect("home.jsp");
}
else
{
out.println("invalid login");
}
con.close();
}
catch(SQLException e)
{
out.println("sql issue"+e);
}}
%>
</form>
</div>
</center>
</body>
</html>
