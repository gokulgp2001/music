
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<% 
String name=request.getParameter("name"); 
String email=request.getParameter("email;"); 
String address=request.getParameter("address"); 
String number=request.getParameter("number"); 
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","123456"); 
Statement st= con.createStatement(); 
ResultSet rs; 
int i=st.executeUpdate("insert into registe values ('"+name+"','"+email+"','"+address+"','"+number+"')"); 
out.println("succuesfully");
%>
