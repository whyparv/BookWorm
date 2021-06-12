
  <%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    String button=request.getParameter("sub");
    String qw="";
    int qw1=0;
Class.forName("com.mysql.jdbc.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bookworm","root","parv");
 
PreparedStatement  ps=con.prepareStatement("select *from user where userid=?");
ps.setString(1, (String)session.getAttribute("name"));
ResultSet rs=ps.executeQuery();


if(rs.next())
{
    qw=rs.getString(12);
    session.setAttribute("cart1", qw);
}
String [] array = qw.split(",", 10);
ArrayList list1=new ArrayList();
ArrayList list2=new ArrayList();
ArrayList list3=new ArrayList();
ArrayList list4=new ArrayList();
ArrayList list5=new ArrayList();
ArrayList list6=new ArrayList();
ArrayList list7=new ArrayList();
int sum=0;
for(int i=0;i<array.length;i++)
{
    PreparedStatement  ps1=con.prepareStatement("select *from book where bookid=? ");
    ps1.setString(1,array[i]);
ResultSet rs1=ps1.executeQuery();
if(rs1.next())
{
   list1.add(rs1.getString(1));
     list2.add(rs1.getString(2));
      list3.add(rs1.getString(3));
       list4.add(rs1.getString(4));
        list5.add(rs1.getString(5));
         list6.add(rs1.getString(6));
          list7.add(rs1.getString(7)); 
          int w=Integer.parseInt(rs1.getString(4));
          sum=sum+w;
}
}

button="";

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
     <body style="background-image: url('book5.jpg') " >
        <div style=" ;width: 100%;">
            <table class="sitetitle" style="height:50px; margin-top: 0px; background-color: black">
                <tr>
                    <td ><a href="homeuser.jsp"><img src="img1.png" width="200px " height="100px" </a> </td>
                    <td ><img src="img2.jpg" width="100px">  </td>
                    <td  >  <font color ="white"> <%=session.getAttribute("location") %></font></td>
                    <td > <label for="Categories"></label>
                         <form action="view1.jsp">
    <td  > <select  style="font-size: 16pt " >
    <option  >All</option>
    <option   >NOVEL</option>
    <option  >BUSINESS</option>
    <option   >STORY</option>
    <option   >ROMANTIC</option>
    <option   >MARVEL</option>
    </select><input type="text" name="book"placeholder="Search..." size="70px" style="font-size: 16pt"><input type="submit" value="GO" style=" margin-left: 0px ;  "> </td>
    
    </form>
<td > <font color ="white" > welcome,<%=session.getAttribute("name") %></td>
<td ><a href="cart.jsp"><img src="cart.gif" width="100px" height="80px" </a> </td>
                 
                </tr>
            </table>
            <table width="100%" class="sitetitle" style="text-align:center; background-color: black;">
                <tr align="centre">
                    
                    <td class="tdtheme"><a href="todaydeal.jsp"><font color ="white">TODAY DEALS</font></a></td>
                    <td  class="tdtheme"><a href="Login.jsp"><font color ="white">SELL</a></font></td>
                    
                    <td class="tdtheme"><a href="best.jsp"><font color ="white">BEST SELLER</font></a></td>
                    <td class="tdtheme"><a href="Login.jsp"><font color ="white">ORDERS</font></a></td>   
                    <td class="tdtheme"><a href="complain.jsp"><font color ="white">COMPLAIN</font></a></td>
                    <td class="tdtheme"><a href="feedback.jsp"><font color ="white">FEEDBACK</font></a></td>
                    <td class="tdtheme"> <a href="sessionDestroy.jsp"><font color ="white">LOGOUT</font></a></td>

                </tr>
            </table>
        </div>
        <div style="width:  50%; margin-top: 50px; margin-left: 467px;height: 400px;background-color: black;">
              
            <table class="sitetitle" style="width: 100%;text-align: center;background-color: black">
                <tr>
                    <%if(qw.equals("no")){ qw1=1;%>
                  <td ><font color="white"><td > <font color ="white" > YOUR CART IS EMPTY</td></font></td>
                  <%}%>
                   <%if(qw1!=1){%>
                <td ><font color="white"><td > <font color ="white" > YOUR CART</td></font></td><%}%>
                
                </tr>
                 </table> 
            <div style="width: 100%; margin-top: 2px; margin-left: 1px;height: 545px; ;" >
                <table style=" width: 100%" cellpadding="10">
                    <%if(qw1!=1){%>
                    <tr align="center">
                  
                  <th><font color="white"> BOOK NAME</font></th>
                  <th><font color="white"> AUTHOR</font></th>
                  <th><font color="white"> PRICE</font></th>
                  
                 </tr>
             
                 <%
                     for(int i=0;i<list1.size();i++)
                     {
                 %>
                 <tr align="centre">
                   
                   <td style=" text-align: center"><font color="white"><%=list2.get(i) %></font></td>
                   <td style=" text-align: center"><font color="white"><%=list3.get(i) %></font></td>
                   <td style=" text-align: center"><font color="white"><%=list4.get(i) %></font></td>
                   
                </tr>
                <%}%>
                <tr></tr>
                <tr></tr>
                <tr align="center">
                    <td colspan="2"><font color="white"> TOTAL</font> </td>
                    <td colspan="2"> <font color="white"> <%=sum%></font></td>
                </tr>
           
                <tr>
                <form action="deletecart.jsp"><td colspan="2" style=" text-align: center; "><input type="submit" value="Delete Cart"   name="Sub"
                       style="width:100px;height: 40px;border-radius:30px;background-color:lightblue;color:black; align-items: center"
                       ></td></form>  
                <form action="order1.jsp">
                    <td colspan="2" style=" text-align: center; "><input type="submit" value="Order"   name="Sub1"
                       style="width:100px;height: 40px;border-radius:30px;background-color:lightblue;color:black; align-items: center"
                       ></td></form>
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