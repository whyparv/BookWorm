<%@page  import="java.sql.DriverManager,java.sql.Connection,java.sql.ResultSet,javax.swing.JOptionPane,java.util.Date" %>
<%@page  import="java.sql.PreparedStatement" %>
<%
   String button=request.getParameter("Sub");
    if(button!=null)
            {
String fullName=request.getParameter("name");
 String cont=request.getParameter("complain");
 
    Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bookworm","root","parv");
PreparedStatement  ps=con.prepareStatement("insert into complain values(?,?,?,?,?,?)");
ps.setString(1,fullName);
ps.setString(2,"null");        
ps.setString(3,"");        
ps.setString(4,"null");     
ps.setString(5,"pending");    
ps.setString(6,cont); 
ps.executeUpdate();
con.close();
  String value=(String)session.getAttribute("name");
if(value!="null"){
response.sendRedirect("homeuser.jsp");
}
else
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
    <body style="background-image: url('book5.jpg') " >
        <div style=" ;width: 100%;">
            <table class="sitetitle" style="height:50px; margin-top: 0px; background-color: black">
                <tr>
                    <td ><img src="img1.png" width="200px " height="100px"  </td>
                    <td ><img src="img2.jpg" width="100px">  </td>
                    <td  > <input type="text" placeholder="LOCATION" size="5px" style="font-size: 13pt" </td>
                    <td > <label for="Categories"></label>
                        <select  style="font-size: 16pt " >
    <option  >All</option>
    <option   >NOVEL</option>
    <option  >BUSINESS</option>
    <option   >STORY</option>
    <option   >ROMANTIC</option>
    <option   >MARVEL</option>
    </select></td>
<td  > <input type="text" placeholder="Search..." size="70px" style="font-size: 16pt" </td>
<td ><a href="Login.jsp"><img src="img3.jpg"  width="100px"></a></td>
<td ><a href="Login.jsp"><img src="cart.gif" width="100px" height="80px" </a> </td>
                 
                </tr>
            </table>
            <table width="100%" class="sitetitle" style="text-align:center; background-color: black;">
                <tr align="centre">
                    <td class="tdtheme"> <a href="home.jsp"><font color ="white">HOME</font></a></td>
                    <td class="tdtheme"><a href="todaydeal.jsp"><font color ="white">TODAY DEALS</font></a></td>
                    <td  class="tdtheme"><a href="Login.jsp"><font color ="white">SELL</a></font></td>
             
                    <td class="tdtheme"><a href="best.jsp"><font color ="white">BEST SELLER</font></a></td>
                    <td class="tdtheme"><a href="Login.jsp"><font color ="white">ORDERS</font></a></td>   
                    <td class="tdtheme"><a href="feedback.jsp"><font color ="white">FEEDBACK</font></a></td>


                </tr>
            </table>
        </div>
        <div style="width:  45%; margin-top: 150px; margin-left: 557px;height: 400px;background-color: black;border-radius: 30px">
            
            <table class="sitetitle" style="width: 100%;text-align: center;background-color: black;border-radius: 30px">
                <td ><font color="white">COMPLAIN BOX</font></td>
            </table> 
            <div style="width: 60%; margin-top: 2px; margin-left: 1px;height: 545px ;" >
                <form action="">
                <table align=center width="80%"  cellpadding="12" border="0" cellspacing="2" style=" height: 250px" >
                  <tr>
            <td><font color="white">Enter  Name</font></td>
            <td><input type="text" name="name" placeholder="Enter User Name"  
style="width:150px;height: 30px;border-radius:10px;background-color:lightblue"></td>
        </tr>
           <tr>
            <td><font color="white">COMPLAIN</font></td>
            <td><textarea name="complain"  style="width:500px;height: 180px;border-radius:30px;background-color:lightblue"></textarea>
        </tr>
         <tr>
             <td colspan="2" style=" text-align: center"><input type="submit" value="SUBMIT"  name="Sub"
                       style="width:100px;height: 40px;border-radius:30px;background-color:lightblue;color:black; align-items: center"
                       ></td>
           
        </tr>
                </table>
                </form>
            </div>
            <div style="background-image: url('complain.gif');width: 180px; height: 200px;margin-top: -500px;margin-left: 650px;opacity: 0.6">
                
            </div>
        </div>
         
       
        <div style="width: 100%; margin-top: 150px; margin-left: 1px;height: 250px; background-color:black;">
             <table class="sitetitle" style="width: 100%;text-align: center;background-color: black;border: 1px">
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
                    <td style="color: white">CONTACT US</td>
                     <td style="color: white">INSTAGRAM</td>
                </tr>
                <tr style=" font-size: 20px">
                    <td style="color: white"></td>
                     <td style="color: white">TWITTER</td>
                </tr>
            </table>
           
    </body>
</html>