<%-- 
    Document   : Pinsert
    Created on : Oct 13, 2010, 3:42:22 PM
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
<a href="Pdel.jsp">Delete Product</a>   <a href="Pser.jsp">Update Product</a>   <a href="index.jsp">Logout</a>
</font></center><br><br>
 <center><font face="Times new Roman" size="8" color ="orange"><u>Insert New Product</u></font></center>
        <form action="Adminser" method="post"><pre><font face="Times new Roman" size="4" >
            
            Product Code                  : <input type="text" name="code" size="35" maxlength="7" />  (Must be 7 digit long)
            
            Product Name                 : <input type="text" name="name" size="35" />
            
            Manufacturer                  :  <input type="text" name="man" size="35" />
            
            Type                              : <input type="text" name="type" size="35" /> 
                                        
            Price                              : <input type="text" name="price" size="35" />
            
            Quantity                          : <input type="text" name="qu" size="35" />
                                                                         
            Description                     :
            
                                                    <textarea name="des" cols="35" rows="10"></textarea>
                      
                                                    <input type="submit" Value ="Insert" name="sub"/>         <input type="reset" value="Cancel" />
                                                    <%String i =request.getParameter("val");
                                          
                                          if(i!=null && i.equals("ins"))
                                              {
                                              %>
                                              Record Inserted SuccessFully!!!
                                              <%
                                          }
                                          else if(i!=null && i.equals("pro"))
                                              {
                                              %>
                                              There is some Problem Try Again!!!
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
