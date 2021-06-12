package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<html>\n");
      out.write("    <style>\n");
      out.write("        .tdtheme{\n");
      out.write("            width: 10%;\n");
      out.write("            height:50px;\n");
      out.write("            border-radius:30px;\n");
      out.write("            font-size: 20px;\n");
      out.write("            font-family: arial;\n");
      out.write("            font-weight: bold;\n");
      out.write("            \n");
      out.write("           \n");
      out.write("        }\n");
      out.write("        .tdtheme:hover{\n");
      out.write("            background-color: #33cccc;\n");
      out.write("        }\n");
      out.write("        .sitetitle{\n");
      out.write("            color: black;\n");
      out.write("            font-size: 40px;\n");
      out.write("            font-family: arial;\n");
      out.write("            font-style: italic;\n");
      out.write("            width:100%;\n");
      out.write("           height:5px;\n");
      out.write("            \n");
      out.write("        }\n");
      out.write("        .img{\n");
      out.write("           \n");
      out.write("            \n");
      out.write("        }\n");
      out.write("        body{\n");
      out.write("            \n");
      out.write("        }\n");
      out.write("      \n");
      out.write("    </style>\n");
      out.write("        <body  style=\"background-image: url('book5.jpg');    \" >\n");
      out.write("        <div  style=\" ;width: 100%;\">\n");
      out.write("            <table class=\"sitetitle\" style=\"height:50px; margin-top: 0px; background-color: black\">\n");
      out.write("                <tr>\n");
      out.write("                    <td ><img src=\"img1.png\" width=\"200px \" height=\"100px\"  </td>\n");
      out.write("                    <td ><img src=\"img2.jpg\" width=\"100px\">  </td>\n");
      out.write("                    <td  > <input type=\"text\" placeholder=\"LOCATION\" size=\"5px\" style=\"font-size: 13pt\" </td>\n");
      out.write("                    \n");
      out.write("                <form action=\"view.jsp\">\n");
      out.write("    <td  > <select  style=\"font-size: 16pt \" >\n");
      out.write("    <option  >All</option>\n");
      out.write("    <option   >NOVEL</option>\n");
      out.write("    <option  >BUSINESS</option>\n");
      out.write("    <option   >STORY</option>\n");
      out.write("    <option   >ROMANTIC</option>\n");
      out.write("    <option   >MARVEL</option>\n");
      out.write("    </select><input type=\"text\" name=\"book\"placeholder=\"Search...\" size=\"70px\" style=\"font-size: 16pt\"><input type=\"submit\" value=\"GO\" style=\" margin-left: 0px ;  \"> </td>\n");
      out.write("    \n");
      out.write("    </form>\n");
      out.write("<td ><a href=\"Login.jsp\"><img src=\"img3.jpg\"  width=\"100px\"></a></td>\n");
      out.write("<td ><a href=\"Login.jsp\"><img src=\"cart.gif\" width=\"100px\" height=\"80px\" </a> </td>\n");
      out.write("                 \n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("            <table width=\"100%\" class=\"sitetitle\" style=\"text-align:center; background-color: black;\">\n");
      out.write("                <tr align=\"centre\">\n");
      out.write("                    <td class=\"tdtheme\"> <a href=\"home.jsp\"><font color =\"white\">HOME</font></a></td>\n");
      out.write("                    <td class=\"tdtheme\"><a href=\"todaydeal.jsp\"><font color =\"white\">TODAY DEALS</font></a></td>\n");
      out.write("                    <td  class=\"tdtheme\"><a href=\"Login.jsp\"><font color =\"white\">SELL</a></font></td>\n");
      out.write("                    \n");
      out.write("                    <td class=\"tdtheme\"><a href=\"best.jsp\"><font color =\"white\">BEST SELLER</font></a></td>\n");
      out.write("                    <td class=\"tdtheme\"><a href=\"Login.jsp\"><font color =\"white\">ORDERS</font></a></td>   \n");
      out.write("                    <td class=\"tdtheme\"><a href=\"complain.jsp\"><font color =\"white\">COMPLAIN</font></a></td>\n");
      out.write("                    <td class=\"tdtheme\"><a href=\"feedback.jsp\"><font color =\"white\">FEEDBACK</font></a></td>\n");
      out.write("\n");
      out.write("\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("        </div>\n");
      out.write("        <div style=\"width:  24%; margin-top: 100px; margin-left: 1070px;height: 550px;background-color: black; border-radius: 30px\">\n");
      out.write("            <table class=\"sitetitle\" style=\"width: 100%;text-align: center;background-color: black;border-radius: 30px\">\n");
      out.write("                <td ><font color=\"white\">BESTSELLERS</font></td>\n");
      out.write("            </table> \n");
      out.write("            <div style=\"width: 338px; margin-top: 2px; margin-left: 65px;height: 480px;background-image: url('giphy.gif'); \" >\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("           <div style=\"width:  24%; margin-top: -550px; margin-left: 420px;height: 550px;background-color: black; border-radius: 30px\">\n");
      out.write("            <table class=\"sitetitle\" style=\"width: 100%;text-align: center;background-color: black;border-radius: 30px\">\n");
      out.write("                <td ><font color=\"white\">TRENDING</font></td>\n");
      out.write("            </table> \n");
      out.write("            <div style=\"width: 338px; margin-top: 2px; margin-left: 40px;height: 480px;background-image: url('tre1.gif'); \" >\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("      \n");
      out.write("        <div style=\"width: 100%; margin-top: 60px; margin-left: 1px;height: 300px;background-color: black;\">\n");
      out.write("              <table class=\"sitetitle\" style=\"width: 100%;text-align: center;background-color: black\">\n");
      out.write("                <td ><font color=\"white\">TOP NOVELS</font></td>\n");
      out.write("            </table> \n");
      out.write("            <table cellspacing=\"8\"  >\n");
      out.write("                <tr>\n");
      out.write("                    <td ><img src=\"novel1.jpg \"  ></td>\n");
      out.write("                       <td ><img src=\"novel2.jpg\" ></td>\n");
      out.write("                          <td ><img src=\"nov2.jpg\" ></td>\n");
      out.write("                             <td ><img src=\"novel3.jpg\" ></td>\n");
      out.write("                                <td ><img src=\"novel4.jpg\" ></td>\n");
      out.write("                                  <td ><img src=\"novel5.png\" ></td> \n");
      out.write("                                  <td ><img src=\"novel6.jpg\" ></td>   \n");
      out.write("                                  <td ><img src=\"novel7 .jpg\" ></td>   \n");
      out.write("                          \n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("      </div>\n");
      out.write("        <div style=\"width: 100%; margin-top: 30px; margin-left: 1px;height: 300px;background-color: black;\">\n");
      out.write("              <table class=\"sitetitle\" style=\"width: 100%;text-align: center;background-color: black\">\n");
      out.write("                <td ><font color=\"white\">TOP MAGAZINES</font></td>\n");
      out.write("            </table> \n");
      out.write("            <table cellspacing=\"8\">\n");
      out.write("                <tr>\n");
      out.write("                     <td ><img src=\"mag.jpg \"  ></td>\n");
      out.write("                      <td ><img src=\"mag1.jpg \"  ></td>\n");
      out.write("                       <td ><img src=\"mag2.jpg \"  ></td>\n");
      out.write("                        <td ><img src=\"mag3.jpg \"  ></td>\n");
      out.write("                         <td ><img src=\"mag4.jpg \"  ></td>\n");
      out.write("                          <td ><img src=\"mag5.jpg \"  ></td>\n");
      out.write("                           <td ><img src=\"mag6.jpg \"  ></td>\n");
      out.write("                            <td ><img src=\"mag7.jpg \"  ></td>\n");
      out.write("                        \n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("      </div>\n");
      out.write("        <div style=\"width: 100%; margin-top: 50px; margin-left: 1px;height: 250px; background-color: black;\">\n");
      out.write("             <table class=\"sitetitle\" style=\"width: 100%;text-align: center;background-color: black ;border: 1px\">\n");
      out.write("                <td ><font color=\"white\">FOR MORE INFORMATION</font></td>\n");
      out.write("            </table> \n");
      out.write("            <table   class=\"sitetitle\"style=\" width: 100%;text-align: center; font-size: 30px\">\n");
      out.write("                <tr >\n");
      out.write("                    <td style=\"color: white\">GET TO KNOW  US</td>\n");
      out.write("                     <td style=\"color: white\">CONNECT WITH US</td>\n");
      out.write("                </tr >\n");
      out.write("                <tr style=\" font-size: 20px\">\n");
      out.write("                    <td style=\"color: white\"><a href=\"about.jsp\"><font color =\"white\">ABOUT US</font></a></td>\n");
      out.write("                     <td style=\"color: white\">FACEBOOK</td>\n");
      out.write("                </tr>\n");
      out.write("                <tr style=\" font-size: 20px\">\n");
      out.write("                    <td style=\"color: white\"><a href=\"contactus.jsp\"><font color =\"white\">CONTACT US</font></a></td>\n");
      out.write("                     <td style=\"color: white\">INSTAGRAM</td>\n");
      out.write("                </tr>\n");
      out.write("                <tr style=\" font-size: 20px\">\n");
      out.write("                    <td style=\"color: white\"></td>\n");
      out.write("                     <td style=\"color: white\">TWITTER</td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("          \n");
      out.write("    </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
