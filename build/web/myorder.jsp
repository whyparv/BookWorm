 <%@page import="java.util.ArrayList"%>
<%@page  import="java.sql.DriverManager,java.sql.Connection" %>
<%@page  import="java.sql.PreparedStatement,java.sql.ResultSet" %>
<%
    Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bookworm","root","parv");
PreparedStatement  ps=con.prepareStatement("select *from book ");
ResultSet rs=ps.executeQuery();
ArrayList list1=new ArrayList();
ArrayList list2=new ArrayList();
ArrayList list3=new ArrayList();
ArrayList list4=new ArrayList();
ArrayList list5=new ArrayList();
ArrayList list6=new ArrayList();
ArrayList list7=new ArrayList();
while(rs.next())
{
    list1.add(rs.getString(1));
     list2.add(rs.getString(2));
      list3.add(rs.getString(3));
       list4.add(rs.getString(4));
        list5.add(rs.getString(5));
         list6.add(rs.getString(6));
          list7.add(rs.getString(7));
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
                 
                    <td colspan="2" style=" text-align: center"><a href="homemanager.jsp"><img src="img1.png" width="200px " height="100px " > </a> </td>
 
                 
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
        <div style="width:  55%; margin-top: 50px; margin-left: 467px;height: 1400px;background-color: black;">
            <table class="sitetitle" style="width: 100%;text-align: center;background-color: black">
                <tr>
                <td ><font color="white"><td > <font color ="white" > PRODUCT MENU</td></font></td>
                </tr>
                 </table> 
            <div style="width: 100%; margin-top: 2px; margin-left: 1px;height: 545px; ;" >
                <table style=" width: 100%">
                    <tr align="center">
                  <th><font color="white"> BOOK ID</font></th>
                  <th><font color="white"> BOOK NAME</font></th>
                  <th><font color="white"> AUTHOR</font></th>
                  <th><font color="white"> PRICE</font></th>
                  <th><font color="white"> QUANTITY</font></th>
                  <th><font color="white"> STATUS</font></th>
                  <th><font color="white"> E-BOOK</font></th>
                 </tr>
                 <%
                     for(int i=0;i<list1.size();i++)
                     {
                 %>
                 <tr align="centre">
                    <td><font color="white"><%=list1.get(i) %></font></td>
                   <td><font color="white"><%=list2.get(i) %></font></td>
                   <td><font color="white"><%=list3.get(i) %></font></td>
                   <td><font color="white"><%=list4.get(i) %></font></td>
                   <td><font color="white"><%=list5.get(i) %></font></td>
                   <td><font color="white"><%=list6.get(i) %></font></td>
                   <td><font color="white"><%=list7.get(i) %></font></td>
                </tr>
                <%}%>
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