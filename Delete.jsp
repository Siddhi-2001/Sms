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
	width: 500px;
	height: 350px;
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
<script src="Check.js"></script>

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
<div class="form-box">
<form method="POST" onSubmit="return valid()">
<div class="container">
<input type="number" name="rno" placeholder="enter rno" id="rn"/>
<br><br>
</div>
<input type="submit" value="Delete" name="btn" class="button"/>

<%
if(request.getParameter("btn")!=null)
{
int rno=Integer.parseInt(request.getParameter("rno"));
try
{

DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
String url="jdbc:mysql://localhost:3306/sms_23july2023";
Connection con=DriverManager.getConnection(url,"root","abc123");
String sql="delete from student where rno=(?)";
PreparedStatement pst=con.prepareStatement(sql);
pst.setInt(1,rno);
long rc = pst.executeUpdate();
if(rc>0){
out.println("record deleted");
}
else{
out.println("record does not exists");
}
con.close();
}
catch(SQLException e)
{
out.println("issue "+e);
}
}
%>
</form>
</div>
</center>
</body>
</html>
