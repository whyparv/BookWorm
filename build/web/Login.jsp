<%@page  import="java.sql.DriverManager,java.sql.Connection,java.sql.ResultSet,javax.swing.JOptionPane" %>
<%@page  import="java.sql.PreparedStatement" %>
<%
    String button=request.getParameter("Sub");
    int LOGIN=0;
    if(button!=null)
            {
    String name=request.getParameter("id");
    String password=request.getParameter("pass");
    String type=request.getParameter("typ");
   
    
    Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bookworm","root","parv");
 
        PreparedStatement ps1= con.prepareStatement("select *from user  where userid= ? and password=? and usertype=?");
        ps1.setString(1,name);
         ps1.setString(2,password); 
         ps1.setString(3,type);
         
        ResultSet rs1=ps1.executeQuery();
        if(rs1.next())
        {
           if(type.equals("user"))
           {
               String location = rs1.getString(5);
               response.sendRedirect("homeuser.jsp");
               session.setAttribute("name", name);
               session.setAttribute("location", location);
           } 
           if(type.equals("manager"))
           {
               response.sendRedirect("homemanager.jsp");
               session.setAttribute("name", name);
           }
         
         }
        else
        {
          LOGIN=1;
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
                    <td colspan="7" style=" text-align: center; " ><a href="home.jsp"><img src="img1.png" width="200px " height="100px" </a> </td>
                     </tr>
            </table>
           
        </div>
        <div style="width:  22%; margin-top: 140px; margin-left: 770px;height: 400px;background-color: black;">
            <form action="" method="doPost">
            <table class="sitetitle" style="width: 100%;text-align: center;background-color: black">
                <tr>
                <td ><font color="white">LOGIN</font></td>
                </tr>
               
            </table> 
            <div style="width: 100%; margin-top: 2px; margin-left: 1px;height: 545px;" >
       <table align=center width="80%"  cellpadding="6" border="0" cellspacing="2" style=" height: 250px" >
        
        <tr>
            <td><font color="white">ID</font></td>
            <td><input type="text" name="id"placeholder="enter id here"  
style="width:150px;height: 30px;border-radius:30px;background-color:lightblue"></td>
        </tr>
        <tr>
            <td><font color="white">PASSWORD</font></td>
            <td><input type="password" name="pass" placeholder="enter password here"
                       style="width:150px;height: 30px;border-radius:30px;background-color:lightblue"
                       ></td>
        </tr>
        <tr>
            <td><font color="white">Login as</font></td>
            <td><select  name="typ"  style="width:150px;height: 30px;border-radius:30px;background-color:lightblue">
                <option>login as</option>
                <option>manager</option>
                <option>user</option>
                </select></td>
        </tr>
        <tr>
            <td colspan="2" style=" text-align: center;color: white"><a href="forgotpassword.jsp"><font color="white">Forget Password</font></a></td>
        </tr>
        <tr>
            <td colspan="2" style=" text-align: center; "><input type="submit" value="Login"   name="Sub"
                       style="width:100px;height: 40px;border-radius:30px;background-color:lightblue;color:black; align-items: center"
                       ></td>
            </tr>
            <tr>
                <%
                   if(LOGIN==1)
                   { %><td colspan="2" style="text-align: center"> <font color="white">INVALID ID/PASSWORD</font></td> <%}
                %>
                
            </tr>
        </form>
    </table >
    <table style=" margin-top: 15px">
                    <tr>
                        <td style="color: white">---------------------------New to BookWorm--------------------------</td>
                    </tr>
                    <tr >
                        
            <td colspan="2" style=" text-align: center;margin-top: 30px"><a href="signup.jsp"><font color="white">Create New Account </font></a></td>
                    </tr>
                </table>
            </div>
        </div>
       
    </body>
</html>