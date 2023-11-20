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

table {
	margin: 10px 0px;
	border: none;
	padding: 10px;
	border-radius: 5px;
	width: 50%;
	color:#66FFFF;	
	margin-top:20px;
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

<%
String un=(String)session.getAttribute("un");
if(un==null)
{
response.sendRedirect("index.jsp");
}
%>
<div class="container">
<table border="5">
<tr>
<th>RNO</th>
<th>NAME</th>
<th>MARKS</th>
</tr>
<%
try
{
DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
String url="jdbc:mysql://localhost:3306/sms_23july2023";
Connection con = DriverManager.getConnection(url,"root","abc123");
String sql = "select *from student";
PreparedStatement pst = con.prepareStatement(sql);
ResultSet rs = pst.executeQuery();
while(rs.next())
{
%>
<tr style="text-align:center;">
<td><%= rs.getInt(1)%></td>
<td><%= rs.getString(2)%></td>
<td><%= rs.getInt(3)%></td>
</tr>
<% }
con.close();
}
catch(SQLException e)
{
out.println("issue "+e);
}
%>
</table>
</div>
</center>
</body>
</html>