<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    String qw="",qw1="",qw2="",qw3="",qw4="",qw5="";
    String str=request.getParameter("book");
    Class.forName("com.mysql.jdbc.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bookworm","root","parv");
PreparedStatement  ps=con.prepareStatement("select *from book where name=?");
ps.setString(1,str);
ResultSet rs=ps.executeQuery();
if(rs.next())
{
   qw= rs.getString(3);
   qw1= rs.getString(4);
   qw2= rs.getString(6);
  qw3= rs.getString(7);
   qw4= rs.getString(8);
   qw5= rs.getString(2);
}
else
{
    response.sendRedirect("home.jsp");
}

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
           <div style="background-color: white;height: 380px;width: 270px ; margin-left: 500px; margin-top: -560px;background-image: url('<%=qw4%>');">
                
            </div>
        <div style="width: 30%; height: 270px; background-color: rgba(0,0,0,0.2); margin-top: -380px;margin-left: 900px">
            <table style="width: 100%;" cellspacing="10" cellpadding="10" >
                <tr>
                    <td colspan="2" style=""><font color="white">NAME</font></td>
            <td colspan="1"><font color="white"><%=qw5%>    </font>                </td>
                </tr>
                 <tr>
                    <td colspan="2"><font color="white">AUTHOR</font></td>
                    <td colspan="2">  <font color="white"><%=qw%>    </font>                    </td>
                </tr
                <tr>
                    <td colspan="2"><font color="white">PRICE</font></td>
                    <td colspan="2"><font color="white"><%=qw1%>    </font>                      </td>
                </tr> 
                <tr>
                    <td colspan="2"><font color="white">STATUS</font></td>
                    <td colspan="2">  <font color="white"><%=qw2%>    </font>                    </td>
                </tr> 
                <tr>
                    <td colspan="2"><font color="white">E-BOOK STATUS</font></td>
                    <td colspan="2">  <font color="white"><%=qw3%>    </font>                    </td>
                </tr>
                <tr>
                    <td><a href="Login.jsp"><img src="cart3.gif"></a></td>
                    <td><a href="Login.jsp"><img src="buy2.gif" width="180"></a></td>
                </tr>
                <tr>
                    <td colspan="1"><font color="white">Wanna Book On Rent??</font></td>
<td colspan=""> <a href="Login.jsp"> <img src="click.gif" width="180"> </a>                 </td>
                </tr>
            </table>
        </div>
                <div style="background-color: black; width: 172px; height: 61px; margin-left: 1351px; margin-top: 228px; border-radius: 20px" >
                    <td><a href="home.jsp"><img src="back.gif" height="61px" style="border-radius: 10px"></a></td>
                </div>
    </body>
</html>