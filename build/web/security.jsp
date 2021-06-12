<%
    response.addHeader("pragma",  "no-cache");
    response.setHeader("Cache-Control",  "no-Store");
    response.addHeader("Cache-Control",  "no-Store");
    String value=(String)session.getAttribute("name");
    if(session==null)
    {
       response.sendRedirect("home.jsp");
    }
    if(value==null)
    {
       response.sendRedirect("home.jsp");
    }
    %>