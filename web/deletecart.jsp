<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
Class.forName("com.mysql.jdbc.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bookworm","root","parv");
PreparedStatement  ps2=con.prepareStatement("update user set cart=? where userid=? ");
    ps2.setString(1, "no");
    ps2.setString(2, (String)session.getAttribute("name"));
    ps2.executeUpdate();

response.sendRedirect("homeuser.jsp");

%>