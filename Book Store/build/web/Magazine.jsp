<%-- 
    Document   : Noval
    Created on : Oct 13, 2010, 7:35:08 PM
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
  <% pack.Conn c = new pack.Conn();
            
            String st[] = c.infor("Entertainment");
                     
                 %>
<center><font face="Times new Roman" size="7" color="Orange">GM General Book Stores</font></center>
<center> <br><br><br><br>
        <table cellspacing="20">
    <tr>
        <td>
            <IMG SRC="pic/mag2.jpg" BORDER="1"  HEIGHT="150" WIDTH="150"></IMG>
            
        </td>
        
        <td align="left"><br><br>
           <%
            String st2[] = st[0].split("\n");
            for(int i =0;i<st2.length;i++)
                {
                out.println(st2[i]);%><br><%
            }
            %>
        </td>
    
        <td>
            <IMG SRC="pic/mag3.jpg" BORDER="1"  HEIGHT="150" WIDTH="150"></IMG> 
        </td>
        
        <td align="left"><br><br>
             <%
             st2 = st[1].split("\n");
            for(int i =0;i<st2.length;i++)
                {
                out.println(st2[i]);%><br><%
            }
            %>
        </td>
        </tr>
            <tr>
        <td>
            <IMG SRC="pic/mag4.jpg" BORDER="1"  HEIGHT="150" WIDTH="150"></IMG> 
        </td>
        
        <td align="left"><br><br>
            <%
             st2 = st[2].split("\n");
            for(int i =0;i<st2.length;i++)
                {
                out.println(st2[i]);%><br><%
            }
            %>
        </td>
        
        <td>
            <IMG SRC="pic/mag5.jpg" BORDER="1"  HEIGHT="150" WIDTH="150"></IMG> 
        </td>
        
        <td align="left"><br><br>
            <%
             st2 = st[3].split("\n");
            for(int i =0;i<st2.length;i++)
                {
                out.println(st2[i]);%><br><%
            }
            %>
        </td>
    </tr>
        <tr>
        <td>
            <IMG SRC="pic/mag7.jpg" BORDER="1"  HEIGHT="150" WIDTH="150"></IMG> 
        </td>
        
        <td align="left"><br><br>
             <%
             st2 = st[4].split("\n");
            for(int i =0;i<st2.length;i++)
                {
                out.println(st2[i]);%><br><%
            }
            %>
        </td>
    
        <td>
            <IMG SRC="pic/mag8.jpg" BORDER="1"  HEIGHT="150" WIDTH="150"></IMG> 
        </td>
        
        <td align="left"><br><br>
            <%
             st2 = st[5].split("\n");
            for(int i =0;i<st2.length;i++)
                {
                out.println(st2[i]);%><br><%
            }
            %>
        </td>
    </tr>
     <tr>
        <td>
            <IMG SRC="pic/mag1.jpg" BORDER="1"  HEIGHT="150" WIDTH="150"></IMG> 
        </td>
        
        <td align="left"><br><br>
            <%
             st2 = st[6].split("\n");
            for(int i =0;i<st2.length;i++)
                {
                out.println(st2[i]);%><br><%
            }
            %>
        </td>
    
        
    </tr>
</table></center>   
    </body>
</html>
