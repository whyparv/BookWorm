<%@include file="security.jsp" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    int bw=0,bw1=0,bw2=0,bw3=0,bw4=0,bw5=0;
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bookworm","root","parv");
PreparedStatement  ps=con.prepareStatement("select *from book ");
ResultSet rs=ps.executeQuery();
while(rs.next())
{
    bw++;
}
PreparedStatement  ps1=con.prepareStatement("select *from user ");
ResultSet rs1=ps1.executeQuery();
while(rs1.next())
{
    bw1++;
}
PreparedStatement  ps2=con.prepareStatement("select *from  complain ");
ResultSet rs2=ps2.executeQuery();
while(rs2.next())
{
    bw2++;
}
PreparedStatement  ps3=con.prepareStatement("select *from feedback");
ResultSet rs3=ps3.executeQuery();
while(rs3.next())
{
    bw3++;
}
PreparedStatement  ps4=con.prepareStatement("select *from orders");
ResultSet rs4=ps4.executeQuery();
while(rs4.next())
{
    bw4++;
}
PreparedStatement  ps5=con.prepareStatement("select *from orders where ordertype=?");
ps5.setString(1, "rent");
ResultSet rs5=ps5.executeQuery();
while(rs5.next())
{
    bw5++;
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
    <body style="background-image: url('book5.jpg') ; " >
        <div style=" ;width: 100%;">
            <table class="sitetitle" style="height:50px; margin-top: 0px; background-color: black ; width: 100%">
                <tr>
                 
                    <td colspan="2" style=" text-align: center"><a href="homeuser.jsp"><img src="img1.png" width="200px " height="100px " > </a> </td>
 
                 
                </tr>
            </table>
            <table width="100%" class="sitetitle" style="text-align:center; background-color: black;">
                <tr align="centre">
                    
                    <td class="tdtheme"><a href="todaydeal.jsp"><font color ="white">EDIT TODAY DEALS</font></a></td>
                    <td  class="tdtheme"><font color ="white"> <select  style="font-size: 16pt " onchange="location=this.value;" >
                              <option   > PRODUCT</option>
                            <option  value="newproduct.jsp" >ADD NEW PRODUCT</option>
                            <option value="viewproduct.jsp" >VIEW PRODUCT</option>
                            <option  value="updateproduct.jsp"  >UPDATE  PRODUCT</option>
    </select></font></td>
                    <td class="tdtheme"><a href="Login.jsp"><font color ="white">EDIT RENT</font></a></td>
                    <td class="tdtheme"><a href="best.jsp"><font color ="white">EDIT BEST SELLER</font></a></td>
                    <td class="tdtheme"><font color ="white"> <select  style="font-size: 16pt " >
    <option  >VIEW ORDERS</option>
    <option   >UPDATE ORDER</option>
    </select></font></a></td>   
                    <td class="tdtheme"><font color ="white"> <select  style="font-size: 16pt " >
    <option  >VIEW COMPLAINT</option>
    <option   >UPDATE COMPLAINT</option>
    
    </select><font></td>
                    <td class="tdtheme"><a href="feedback.jsp"><font color ="white"> EDIT FEEDBACK</font></a></td>
                    <td class="tdtheme"> <a href="sessionDestroy.jsp"><font color ="white">LOGOUT</font></a></td>

                </tr>
            </table>
        </div>
        <div style="width:  55%; margin-top: 50px; margin-left: 467px;height: 800px;background-color: black;">
            <table class="sitetitle" style="width: 100%;text-align: center;background-color: black">
                <tr>
                <td ><font color="white"><td > <font color ="white" > welcome,<%=session.getAttribute("name") %></td></font></td>
                </tr>
                
                <tr>
                        <td ><font color="white"><td > <font color ="white" >CURRENT STATUS</td></font></td>
                </tr>
            </table> 
                <br>
                    <br>
                        <br>
                            <br>
            <div style="width: 60%; margin-top: 2px; margin-left: 110px;height: 545px; ;" >
                <table style=" width: 100% " cellpadding="10" cellspacing="10">
                    <tr>
                        <td style=" text-align: center"><font color ="white" >Total No. Of Products</font></td>
                <td style=" text-align: center"><font color ="white" ><%=bw%></font></td>
                    </tr>   
                    <tr>
                        <td style=" text-align: center"><font color ="white" >Total No. Of Users</td>
                        <td style=" text-align: center"><font color ="white" ><%=bw1%></font></td>
                    </tr>
                          <tr>
                        <td style=" text-align: center"><font color ="white" >Total No. Of Complaints</td></td>
                        <td style=" text-align: center"><font color ="white" ><%=bw2%></font></td>
                    </tr>
                          <tr>
                        <td style=" text-align: center"><font color ="white" >Total No. Of Feedback</td></td>
                        <td style=" text-align: center"><font color ="white" ><%=bw3%></font></td>
                    </tr>
                    <tr>
                        <td style=" text-align: center"><font color ="white" >Total No.  order</td></td>
                        <td style=" text-align: center"><font color ="white" ><%=bw4%></font></td>
                    </tr>
                     <tr>
                        <td style=" text-align: center"><font color ="white" >Total No. Of Book On Rent</td></td>
                        <td style=" text-align: center"><font color ="white" ><%=bw5%></font></td>
                    </tr>
                </table>
            </div>
        </div>
       
        <div style="width: 100%; margin-top: 50px; margin-left: 1px;height: 250px; background-color: black;">
             <table class="sitetitle" style="width: 100%;text-align: center;background-color: black ;border: 1px">
                <td ><font color="white"><--FOR MORE INFORMATION--></font></td>
            </table> 
            <table   class="sitetitle"style=" width: 100%;text-align: center; font-size: 30px">
                <tr >
                    <td style="color: white">GET TO KNOW  US</td>
                     <td style="color: white">CONNECT WITH US</td>
                </tr >
                <tr style=" font-size: 20px">
                    <td style="color: white">ABOUT US</td>
                     <td style="color: white">FACEBOOK</td>
                </tr>
                <tr style=" font-size: 20px">
                    <td style="color: white"><a href="contactus.jsp"><font color ="white">CONTACT US</font></a></td>
                     <td style="color: white">INSTAGRAM</td>
                </tr>
                <tr style=" font-size: 20px">
                    <td style="color: white"></td>
                     <td style="color: white">TWITTER</td>
                </tr>
            </table>
         
    </body>
</html>