<%-- 
    Document   : ordertrack
    Created on : Oct 14, 2010, 3:59:06 PM
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
    <body background="pic/Books_Lib.jpg">
<!-- DO NOT MOVE! The following AllWebMenus linking code section must always be placed right AFTER the BODY tag-->
<!-- ******** BEGIN ALLWEBMENUS CODE FOR xptabs ******** -->
<script type="text/javascript">var MenuLinkedBy="AllWebMenus [4]",awmMenuName="xptabs",awmBN="842";awmAltUrl="";</script><script charset="UTF-8" src="xptabs.js" type="text/javascript"></script><script type="text/javascript">awmBuildMenu();</script>
<!-- ******** END ALLWEBMENUS CODE FOR xptabs ******** -->

        <center><font face="Times new Roman" size="8" color="blue">Delete Product<hr  width="400"></font></center>
        <form action="Adminser" method="post"><pre><font face="Times new Roman" size="4" color="blue">
            
            Order Number       : <input type="text" name="num" size="35" maxlength="8" />
            
            
                                          <input type="submit" Value ="Get Status" name ="sub"/>         <input type="reset" value="Cancel" />
                                          
                                          <%String i =request.getParameter("val");
                                                                               
                                           if(i!=null && i.equals("pro"))
                                              {
                                              %>
                                              Please Enter the Correct Order Number!!!
                                              <%
                                          }
                                          %>
        </font></pre></form>
    </body>
</html>
