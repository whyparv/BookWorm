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
    String pincode=request.getParameter("pin");
    String  age=request.getParameter("age");
      String  gen=request.getParameter("gender");
        String  password=request.getParameter("passw");
          String  password1=request.getParameter("passw1");
    if(password.equals(password1))
    {
    Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bookworm","root","parv");
PreparedStatement  ps=con.prepareStatement("insert into user values(?,?,?,?,?,?,?,?,?,?,?,?)");
ps.setString(1,fullName);
ps.setString(2,"user");        
ps.setString(3,cont);        
ps.setString(4,address);        
ps.setString(5,city);        
ps.setString(6,state);        
ps.setString(7,pincode);        
ps.setString(8,age); 
ps.setString(9,gen);
ps.setString(10,password);
ps.setString(11,"unblock");
ps.setString(12,"");
ps.executeUpdate();
con.close();
response.sendRedirect("Login.jsp");
            }
    else
    {
        PASS=1;
    }
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
            <table class="sitetitle" style="height:50px; margin-top: 0px; background-color: black; opacity: 0.7">
                <tr>
                    <td colspan="7" style=" text-align: center; " ><img src="img1.png" width="200px " height="100px"  </td>
                     </tr>
            </table>
         
        </div>
        <div style="width:  40%; margin-top: 50px; margin-left: 600px;height: 750px;background-color: black">
            <form action="">
            <table class="sitetitle" style="width: 100%;text-align: center;background-color: black">
                <tr>
                <td ><font color="white">SIGN UP</font></td>
                </tr>
               
            </table> 
            <div style="width: 100%; margin-top: 2px; margin-left: 1px;height: 600px;" >
       <table align=center width="80%"  cellpadding="12" border="0" cellspacing="2" style=" height: 250px" >
        
        <tr>
            <td><font color="white">Enter User Name</font></td>
            <td><input type="text" name="uname" placeholder="Enter User Name"  
style="width:150px;height: 30px;border-radius:30px;background-color:lightblue"></td>
        </tr>
          <tr>
            <td><font color="white">CONTACT</font></td>
            <td><input type="text" name="contact" placeholder="Enter Contact"  
style="width:150px;height: 30px;border-radius:30px;background-color:lightblue"></td>
        </tr>
          <tr>
            <td><font color="white">ADDRESS</font></td>
            <td><textarea name="add" style="width:180px;height: 60px;border-radius:30px;background-color:lightblue"></textarea>
        </tr>
          <tr>
            <td><font color="white">CITY</font></td>
            <td><input type="text"  name="city" placeholder="Enter City"  
style="width:150px;height: 30px;border-radius:30px;background-color:lightblue"></td>
        </tr>
          <tr>
            <td><font color="white">STATE</font></td>
            <td><input type="text"  name="state"placeholder="Enter State"  
style="width:150px;height: 30px;border-radius:30px;background-color:lightblue"></td>
        </tr>
          <tr>
            <td><font color="white"> PINCODE </font></td>
            <td><input type="text" name="pin"placeholder="Enter Pincode"  
style="width:150px;height: 30px;border-radius:30px;background-color:lightblue"></td>
        </tr>
          <tr>
            <td><font color="white">AGE</font></td>
            <td><input type="text"  name="age"placeholder="Enter Age"  
style="width:150px;height: 30px;border-radius:30px;background-color:lightblue"></td>
        </tr>
          <tr>
            <td><font color="white">GENDER</font></td>
            <td><select   name="gender" style="width:150px;height: 30px;border-radius:30px;background-color:lightblue">
                <option>Gender</option>
                <option> MALE </option>
                <option>FEMALE</option>
                <option> TRANS GENDER</option>
                </select></td>
        </tr>
          <tr>
            <td><font color="white">PASSWORD</font></td>
            <td><input type="password" name="passw" placeholder="enter password"  
style="width:150px;height: 30px;border-radius:30px;background-color:lightblue"></td>
        </tr>
        
        <tr>
            <td><font color="white">RE ENTER PASSWORD</font></td>
<td><input type="password" placeholder="Re  Enter password " name="passw1"
                       style="width:150px;height: 30px;border-radius:30px;background-color:lightblue"
                       ></td>
        </tr>
             <tr>
                <%
                   if(PASS==1)
    { %><td colspan="2" style="text-align: center"> INVALID ID/PASSWORD</td> <%}
                %>
                
            </tr>
        <tr>
            <td colspan="2" style=" text-align: center"><input type="submit" value="SIGN UP"  name="Sub"
                       style="width:100px;height: 40px;border-radius:30px;background-color:lightblue;color:black; align-items: center"
                       ></td>
           
        </tr>
        </form>
            </div>
        </div>
       
    </body>
</html>