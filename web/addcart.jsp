<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    String qw="";
    Class.forName("com.mysql.jdbc.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bookworm","root","parv");
 PreparedStatement  ps1=con.prepareStatement("select * from user where userid=?");
 ps1.setString(1, (String)session.getAttribute("name"));
 ResultSet rs=ps1.executeQuery();
 if(rs.next())
 {
     qw=rs.getString(12);
 }
 
    

PreparedStatement  ps=con.prepareStatement("update user set cart=? where  userid=?");
ps.setString(1,(String)session.getAttribute("cart")+","+qw);
ps.setString(2, (String)session.getAttribute("name"));
ps.executeUpdate();
response.sendRedirect("homeuser.jsp");
%>