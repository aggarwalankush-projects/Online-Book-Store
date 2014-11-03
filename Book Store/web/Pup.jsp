<%-- 
    Document   : Pup
    Created on : Oct 13, 2010, 4:38:03 PM
    Author     : lucky
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head><%String pass = (String)session.getAttribute("login");
    if(pass !=null && pass.equals("Aptech"))
{        %>
    <body background="pic/Books_Lib.jpg">

 <center>   <font face="Times new Roman" size="7" color="Orange">GM General Book Stores</font></center>
 <br><br><center><font face="Times new Roman" size="+2" color="orange"> 
 <a href="index.jsp">Logout</a>
</font></center><br><br>
         <center><font face="Times new Roman" size="8" color="Orange">UpDate Product<hr  width="400"></font></center>
        <form action="Adminser" method="post"><pre><font face="Times new Roman" size="4" >
            <%String co =request.getParameter("code");
             String n = request.getParameter("name");
               String m= request.getParameter("man");
              String t = request.getParameter("type");
              String pr =request.getParameter("price");
              String d = request.getParameter("des");
              String qu = request.getParameter("qu");
                                          %>
            Product Code                  : <input type="text" name="code" size="35" maxlength="7" value="<%= co%>" />  
            
            Product Name                 : <input type="text" value="<%= n%>" name="name" size="35" />
            
            Manufacturer                  :  <input type="text" value="<%= m%>" name="man" size="35" />
            
            Type                              : <input type="text" value="<%= t%>" name="type" size="35" /> 
                                        
            Price                              : <input type="text" value="<%= pr%>" name="price" size="35" />
            
             Quantity                          : <input type="text" value="<%= qu%>" name="qu" size="35" />
                                                                         
            Description                     :
            
                                                    <textarea name ="des" cols="35" rows="10"><%= d%></textarea>
                      
                                                    <input type="submit" Value ="UpDate" name="sub"/>         <input type="reset" value="Cancel" />
                                                   
        </font></pre></form>
    </body><%}
    else
        {
            response.sendRedirect("index.jsp"); 
        }
    %>
</html>
