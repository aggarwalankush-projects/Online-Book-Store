<%-- 
    Document   : Pdel
    Created on : Oct 13, 2010, 4:22:24 PM
    Author     : lucky
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%String pass = (String)session.getAttribute("login");
    if(pass !=null && pass.equals("Aptech"))
{        %>
    <body background="pic/Books_Lib.jpg">


<center>   <font face="Times new Roman" size="7" color="Orange">GM General Book Stores</font></center>

<br><br>
<center><font face="Times new Roman" size="+2" color="orange"> 
<a href="Pinsert.jsp">Insert Product</a>   <a href="Pser.jsp">Update Product</a>    <a href="index.jsp">Logout</a>
</font></center>
    <br><br>
        <center><font face="Times new Roman" size="8" color="orange"><u>Delete Product</u></font></center>
        <form action="Adminser" method="post"><pre><font face="Times new Roman" size="4" >
            
            Product Code       : <input type="text" name="code" size="35" maxlength="7" />
            
            
                                          <input type="submit" Value ="Delete" name ="sub"/>         <input type="reset" value="Cancel" />
                                          
                                          <%String i =request.getParameter("val");
                                          
                                          if(i!=null && i.equals("del"))
                                              {
                                              %>
                                              Record Deleted SuccessFully!!!
                                              <%
                                          }
                                          else if(i!=null && i.equals("pro"))
                                              {
                                              %>
                                              Record Not Found!!!
                                              <%
                                          }
                                          %>
        </font></pre></form>
    </body><%}
    else
        {
            response.sendRedirect("index.jsp"); 
        }
    %>
</html>
