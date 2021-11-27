<%@ page import ="javax.sql.*"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <style>
     #id1{font-family:French Script MT;font-size:72pt;color:brown;}
	 #id2{font-size:22pt;}
    </style>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insertion Suceeded</title>
</head>
<body bgcolor="skyblue" align="center">
<%
        String name=request.getParameter("name");
        String add=request.getParameter("address");
        String email=request.getParameter("email"); 
        String phoneno=request.getParameter("phoneno");
        
        try
        {
         Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","123456");
         Statement st=con.createStatement();
         st.executeUpdate("insert into stud(name,address,email,phoneno)values('"+name+"','"+add+"','"+email+"','"+phoneno+"')");
%>
<p id="id1">Record Inserted Successfully</p>
<a href="index1.html" id="id2">Home</a>
<%
         con.close();
        }
        catch(Exception e)
        {
        out.println(e);        
        }
%> 
<br><a href="register.jsp" id="id3"> SHOW TABLE</a>  
</body>
</html>
