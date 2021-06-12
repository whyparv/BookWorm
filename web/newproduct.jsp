<%@page  import="java.sql.DriverManager,java.sql.Connection" %>
<%@page  import="java.sql.PreparedStatement" %>
<%
    int PASS=0;
     String button=request.getParameter("Sub");
    if(button!=null)
            {
    String fullName=request.getParameter("uname");
    String cont=request.getParameter("contact");
    String address=request.getParameter("add");
    String city =request.getParameter("city");
    String state=request.getParameter("state");
    String pincode=request.getParameter("gender");
        String type=request.getParameter("ty");
            String genre=request.getParameter("genre");
    
   
    Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bookworm","root","parv");
PreparedStatement  ps=con.prepareStatement("insert into book values(?,?,?,?,?,?,?,?,?,?)");
ps.setString(1,fullName);
ps.setString(2,cont);        
ps.setString(3,address);        
ps.setString(4,city); 
ps.setString(5,state);
ps.setString(6,"Available");        
ps.setString(7,pincode);       
ps.setString(8,fullName+".jpg"); 
ps.setString(9,type);
ps.setString(10,genre);
ps.executeUpdate();
con.close();
response.sendRedirect("newproduct.jsp");
           
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
        <div style="width:  40%; margin-top: 50px; margin-left: 600px;height: 600px;background-color: black">
             <table class="sitetitle" style="width: 100%;text-align: center;background-color: black">
                <tr>
                <td ><font color="white">ADD NEW PRODUCT</font></td>
                </tr>
               
            </table> 
            <div style="width: 100%; margin-top: 2px; margin-left: 1px;height: 600px;" >
                <form  action="">
       <table align=center width="80%"  cellpadding="12" border="0" cellspacing="2" style=" height: 250px" >
        
        <tr>
            <td><font color="white">BOOK ID</font></td>
            <td><input type="text" name="uname" placeholder="Enter User Name"  
style="width:150px;height: 30px;border-radius:30px;background-color:lightblue"></td>
        </tr>
          <tr>
            <td><font color="white">BOOK NAME</font></td>
            <td><input type="text" name="contact" placeholder="Enter Contact"  
style="width:150px;height: 30px;border-radius:30px;background-color:lightblue"></td>
        </tr>
          <tr>
            <td><font color="white">AUTHOR</font></td>
            <td><textarea name="add" style="width:180px;height: 30px;border-radius:30px;background-color:lightblue"></textarea>
        </tr>
          <tr>
            <td><font color="white">PRICE</font></td>
            <td><input type="text"  name="city" placeholder="Enter City"  
style="width:150px;height: 30px;border-radius:30px;background-color:lightblue"></td>
        </tr>
          <tr>
            <td><font color="white">QUANTITY</font></td>
            <td><input type="text"  name="state"placeholder="Enter State"  
style="width:150px;height: 30px;border-radius:30px;background-color:lightblue"></td>
        </tr>
          
          <tr>
            <td><font color="white">EBOOK</font></td>
            <td><select   name="gender" style="width:150px;height: 30px;border-radius:30px;background-color:lightblue">
                <option>YES</option>
                <option> NO </option>
                
                </select></td>
        </tr>
        
         <tr>
            <td><font color="white">TYPE</font></td>
            <td><select   name="ty" style="width:150px;height: 30px;border-radius:30px;background-color:lightblue">
                <option>book</option>
                <option> magazine </option>
                
                </select></td>
        </tr>
         <tr>
            <td><font color="white">GENRE</font></td>
            <td><input type="text" name="genre" placeholder="Enter Book Genre"  
style="width:150px;height: 30px;border-radius:30px;background-color:lightblue"></td>
        </tr>
          <tr>
         
          
                
            </tr>
        <tr>
            <td colspan="2" style=" text-align: center"><input type="submit" value="ADD"  name="Sub"
                       style="width:100px;height: 40px;border-radius:30px;background-color:lightblue;color:black; align-items: center"
                       ></td>
           
        </tr>
        </table>
                </form>
        </div>
       
      
    </body>
</html>