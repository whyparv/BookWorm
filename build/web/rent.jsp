<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    String qw="";
Class.forName("com.mysql.jdbc.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bookworm","root","parv");
PreparedStatement  ps1=con.prepareStatement("select *from book where bookid=?");
ps1.setString(1,(String)session.getAttribute("cart"));
ResultSet rs=ps1.executeQuery();
if(rs.next())
{
   qw= rs.getString(4);
   
}

PreparedStatement  ps=con.prepareStatement("insert into orders values(?,?,?,?,?,?,?,?)");
ps.setInt(1,0); 
ps.setString(2,(String)session.getAttribute("name"));        
ps.setString(3,"rent");        
ps.setString(4,(String)session.getAttribute("cart"));        
ps.setString(5,qw);        
ps.setString(6,"");        
ps.setString(7,"pending");        
ps.setString(8,"pending"); 
ps.executeUpdate();

%>
<html>
    <style>
        .tdtheme{
            width: 10%;
            height:50px;
            border-radius:30px;
            font-size: 20px;
            font-family: arial;
            font-weight: bold;
            
           
        }
        .tdtheme:hover{
            background-color: #33cccc;
        }
        .sitetitle{
            color: black;
            font-size: 40px;
            font-family: arial;
            font-style: italic;
            width:100%;
           height:5px;
            
        }
        .img{
           
            
        }
        body{
            
        }
      
    </style>
    <body style="background-image: url('book5.jpg');  " >
        <div style=" width: 60%;height:700px; background-color: rgba(0,0,0,0.7);margin-top: 140px;margin-left: 20%">
        </div>
       
        <div style="width: 30%; height: 270px; background-color: rgba(0,0,0,0.7); margin-top: -480px;margin-left: 650px">
            <table width="100%" cellpadding="10">
                <tr style="height: 50px"></tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>
            <tr>
            <td style=" text-align: center" colspan="2" ><font color="white">THANKS FOR ORDERING WITH US</font></td>
</tr>

        <tr>
         <td style=" text-align: center" colspan="2"><font color="white">Redirecting to home page in 5sec...</font></td>
</tr>
            </table>
        </div>
        
    </body>
</html>
<% response.setHeader("Refresh", "5;url=homeuser.jsp"); %>