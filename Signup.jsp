<%@ page import="java.sql.*" %>
<html>
<head>
<title>SMS</title>
<style>
*{font-family:Georgia; font-size:38px;
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
	height: 600px;
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
<script src="Valid.js"></script>

</head>
<body>
<center>
<div class="form-box">
<form method="POST" onsubmit="return check()">
<div class="container">
<input type="text" name="un" placeholder="enter username" id="un"/>
<br><br>
<input type="password" name="pw1" placeholder="enter password" id="pw"/>
<br><br>
<input type="password" name="pw2" placeholder="enter confirm password"/>
<br><br>
</div>
<input type="submit" name="btn" class="button" value="SIGN UP"/>
<br><br>
<%
if(request.getParameter("btn") != null)
{
String un = request.getParameter("un");
String pw1 = request.getParameter("pw1");
String pw2 = request.getParameter("pw2");
if(! pw1.equals(pw2))
{
out.println("password did not match");
}
else{
try
{
DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
String url = "jdbc:mysql://localhost:3306/sms_23july2023";
Connection con = DriverManager.getConnection(url,"root","abc123");
String sql = "insert into user values(?,?)";
PreparedStatement pst = con.prepareStatement(sql);
pst.setString(1,un);
pst.setString(2,pw1);
pst.executeUpdate();
out.println("Successfully Registered!!!");
con.close();
}
catch(SQLException e)
{
out.println("sql issue"+e);
}}}
%>
<div class="nav">
<label>Already a user??  </label><a href="index.jsp">Login</a><label>  here</label></div>
</form>
</div>
</center>
</body>
</html>
