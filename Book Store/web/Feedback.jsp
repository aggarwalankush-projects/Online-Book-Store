<%-- 
    Document   : Feedback
    Created on : Oct 13, 2010, 1:53:42 PM
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

<center><font face="Times new Roman" size="7" color="Orange">GM General Book Stores
 <br><br>
       <u> FeedBack Form</u></font></center>
        <form action="helper" method="post"><pre><font face="Times new Roman" size="4" >
            Name                  : <input type="text" name="nm" size="35" />
            
            E-Mail                 : <input type="text" name="mail" size="35" />
            
            Contact                : <input type="text" name="con" size="35" />
            
            Qualtity of Books : <input type="radio" name="qb">Excelent 
                                        <input type="radio" name="qb">Good
                                        <input type="radio" name="qb">Poor
            
            Delivery Service   : <input type="radio" name="ds">Excelent 
                                        <input type="radio" name="ds">Good
                                        <input type="radio" name="ds">Poor
                                
            Query/Suggeation :
            
                                         <textarea cols="35" rows="10" name="qu">Write Message Here</textarea>
                      
                                         <input type="submit" Value ="Submit" name="sub" />         <input type="reset" value="Cancel" />
                                        
                                         <% String s = request.getParameter("val");
                                            if( s != null && s.equals("pro"))
                                             {
                                             %> There is Some Error Please Try Again!!!<%
                                         }
                                             %>
        </font></pre></form>
    </body>
</html>
