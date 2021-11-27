<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "student";
String userid = "root";
String password = "123456";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<head><style>
 #id1{font-family:Lucida Calligraphy;font-size:22pt;color:red;}
 #id2{font-family:Lucida Handwriting;font-size:18pt;color:blue;}
 #id3{font-size:22pt;}
</style></head>
<body>
<p align="center">
<font size="+5" face="Algerian" color="green">
Records for</font>
</p>
<table border="25" align ="center" cellspacing="5" width="900">
<tr>
<th id="id1">Name</th>
<th id="id1">Address</th>
<th id="id1">email</th>
<th id="id1">Phoneno</th>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from stud ";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td id="id2"><%=resultSet.getString("name") %></td>
<td id="id2"><%=resultSet.getString("address") %></td>
<td id="id2"><%=resultSet.getString("email") %></td>
<td id="id2"><%=resultSet.getString("phoneno") %></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

<down><a href="index.html">Home</a>
</down>
</table>
</body>

</html>