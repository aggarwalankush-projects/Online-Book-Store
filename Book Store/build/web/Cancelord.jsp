<%-- 
    Document   : Cancelord
    Created on : Oct 16, 2010, 5:03:12 PM
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
<center><font face="Times new Roman" size="7" color="Orange">GM General Book Stores</font>
        <br><br><br><br><br><br>
            <center><font face="Times new Roman" size="12" color="Orange"><u>Cancel Order</u></font></center>
        <form action="helper">
          Enter Your Order Code :       <input type = 'text' name = 'code'><br><br><br>
              <input type = 'submit' value=" Cancel Order " name="sub"><br>
        </form>
         <%String i =request.getParameter("val");
                                          
                                          if(i!=null && i.equals("pro"))
                                              {
                                              %>
                                              Record Not Found!!! Please Check Order Number.
                                              <%
                                          }
                                          else if (i!=null && i.equals("done"))
                                            {  %>
                                              Order Cancelled Successfully!!!
                                              <%}
                                          %></center>
    </body>
</html>
