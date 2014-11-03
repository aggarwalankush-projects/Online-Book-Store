<%-- 
    Document   : BuyaPro
    Created on : Oct 16, 2010, 5:04:09 PM
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

        <center><font face="Times new Roman" size="7" color="Orange">GM General Book Stores</font></center>
        <br><br><br><br>
        
        <center>
            <font face="Times new Roman" size="+3" color="Orange"><u>APress</u></font> 
            <% pack.Conn c = new pack.Conn();

            String st[][] = c.buypro("APress");

            %>
            <Form ACTION="Custinfo.jsp" METHOD="post">
                <%
            String co = request.getParameter("code");
            if (co != null) {
               String []ar= c.Uporder2(co);
               for(int i =0;i<ar.length;i++)
                   {
                   %>
                  <input type="hidden" name ="pro" value="<%= ar[i]%>">
                   <%
               }%><input type="hidden" name ="co" value="<%= co%>"> <%
            }
                %>
                <table cellspacing="20">
                    <tr>
                        <td> 
                            <IMG SRC="pic/Apress/ap3.jpg" BORDER="1"  HEIGHT="180" WIDTH="150"></IMG>
                        </td>
                        
                        <td align="left"> <font face="Times new Roman"  >
                                <%
            String st2[] = st[1][0].split("-");
            for (int i = 0; i < st2.length; i++) {
                out.println(st2[i]);%><br><%
            }
                                %><br>
                            <input type="checkbox" name="pro" value="<%= st[0][0]%>"> Add to Cart</font>
                        </td>
                        
                        <td>
                            <IMG SRC="pic/Apress/ap1.jpg" BORDER="1"  HEIGHT="180" WIDTH="150"></IMG>
                            
                        </td>
                        
                        <td align="left"><font face="Times new Roman"  >
                                <%
            st2 = st[1][1].split("-");
            for (int i = 0; i < st2.length; i++) {
                out.println(st2[i]);%><br><%
            }
                                %><br>
                            <input type="checkbox" name="pro" value="<%= st[0][1]%>"> Add to Cart</font> 
                            
                        </td>
                        
                        
                        <td>
                            <IMG SRC="pic/Apress/ap2.gif" BORDER="1"  HEIGHT="180" WIDTH="150"></IMG>
                            
                        </td>
                        
                        <td align="left"><font face="Times new Roman"  >
                                <%
            st2 = st[1][2].split("-");
            for (int i = 0; i < st2.length; i++) {
                out.println(st2[i]);%><br><%
            }
                                %><br>
                            <input type="checkbox" name="pro" value="<%= st[0][2]%>"> Add to Cart</font> 
                        </td>
                        
                        <td>
                            <IMG SRC="pic/Apress/ap4.jpg" BORDER="1"  HEIGHT="180" WIDTH="150"></IMG>
                            
                        </td>
                        
                        <td align="left"><font face="Times new Roman"  >
                                <%
            st2 = st[1][3].split("-");
            for (int i = 0; i < st2.length; i++) {
                out.println(st2[i]);%><br><%
            }
                                %><br>
                            <input type="checkbox" name="pro" value="<%= st[0][3]%>">  Add to Cart</font> 
                        </td>
                        
                    </tr><tr>
                        <td>
                            <IMG SRC="pic/Apress/ap5.jpg" BORDER="1"  HEIGHT="180" WIDTH="150"></IMG>
                            
                        </td>
                        
                        <td align="left"><font face="Times new Roman"  >
                                <%
            st2 = st[1][4].split("-");
            for (int i = 0; i < st2.length; i++) {
                out.println(st2[i]);%><br><%
            }
                                %><br>
                            <input type="checkbox" name="pro" value="<%= st[0][4]%>"> Add to Cart</font> 
                        </td>
                        
                        <td>
                            <IMG SRC="pic/Apress/ap6.jpg" BORDER="1"  HEIGHT="180" WIDTH="150"></IMG>
                            
                        </td>
                        
                        <td align="left" >
                            <font face="Times new Roman"   >
                                <%
            st2 = st[1][5].split("-");
            for (int i = 0; i < st2.length; i++) {
                out.println(st2[i]);%><br><%
            }
                                %><br>
                            <input type="checkbox" name="pro" value="<%= st[0][5]%>"> Add to Cart</font>
                        </td>
                        
                        
                        <td>
                            <IMG SRC="pic/Apress/ap7.jpg" BORDER="1"  HEIGHT="180" WIDTH="150"></IMG>
                            
                        </td>
                        
                        <td align="left"><font face="Times new Roman"   >
                                <%
            st2 = st[1][6].split("-");
            for (int i = 0; i < st2.length; i++) {
                out.println(st2[i]);%><br><%
            }
                                %><br>
                            <input type="checkbox" name="pro" value="<%= st[0][6]%>"> Add to Cart</font> 
                            
                        </td>
                    </tr>
                </table>
                
                <font face="Times new Roman" size="+3" color="Orange"><u>O'Reilly</u></font>
                <br>
                <%

            st = c.buypro("O'Reilly");

                %>
                <table cellspacing="20">
                    <tr>
                        <td>
                            <IMG SRC="pic/com/comb7.jpg" BORDER="1"  HEIGHT="150" WIDTH="150"></IMG>
                            
                        </td>
                        
                        <td align="left"><font face="Times new Roman"   >
                                <%
            st2 = st[1][2].split("-");
            for (int i = 0; i < st2.length; i++) {
                out.println(st2[i]);%><br><%
            }
                                %><br>
                            <input type="checkbox" name="pro" value="<%= st[0][2]%>"> Add to Cart</font> 
                        </td>
                        
                        <td>
                            <IMG SRC="pic/com/comb3.jpg" BORDER="1"  HEIGHT="150" WIDTH="150"></IMG> 
                        </td>
                        
                        <td align="left"><font face="Times new Roman"   >
                                <%
            st2 = st[1][3].split("-");
            for (int i = 0; i < st2.length; i++) {
                out.println(st2[i]);%><br><%
            }
                                %><br>
                            <input type="checkbox" name="pro" value="<%= st[0][3]%>"> Add to Cart</font> 
                        </td>
                        
                        <td>
                            <IMG SRC="pic/com/comb4.jpg" BORDER="1"  HEIGHT="150" WIDTH="150"></IMG> 
                        </td>
                        
                        <td align="left"><font face="Times new Roman"   >
                                <%
            st2 = st[1][1].split("-");
            for (int i = 0; i < st2.length; i++) {
                out.println(st2[i]);%><br><%
            }
                                %><br>
                            <input type="checkbox" name="pro" value="<%= st[0][1]%>"> Add to Cart</font> 
                        </td>
                        
                        <td>
                            <IMG SRC="pic/com/comb5.jpg" BORDER="1"  HEIGHT="150" WIDTH="150"></IMG> 
                        </td>
                        
                        <td align="left"><font face="Times new Roman"   >
                                <%
            st2 = st[1][4].split("-");
            for (int i = 0; i < st2.length; i++) {
                out.println(st2[i]);%><br><%
            }
                                %><br>
                            <input type="checkbox" name="pro" value="<%= st[0][4]%>"> Add to Cart</font> 
                            
                        </td>
                    </tr><tr>
                        <td>
                            <IMG SRC="pic/com/comb1.jpg" BORDER="1"  HEIGHT="150" WIDTH="150"></IMG> 
                        </td>
                        
                        <td align="left"><font face="Times new Roman"   >
                                <%
            st2 = st[1][0].split("-");
            for (int i = 0; i < st2.length; i++) {
                out.println(st2[i]);%><br><%
            }
                                %><br>
                            <input type="checkbox" name="pro" value="<%= st[0][0]%>"> Add to Cart</font> 
                        </td>
                        
                        
                    </tr>
                </table>
                <center>    <font face="Times new Roman" size="+3" color="Orange"><u>MicroSoft</u></font></center>
                <table cellspacing="20">
                    
                    <%

            st = c.buypro("Microsoft");

                    %>
                    <tr>
                        <td>
                            <IMG SRC="pic/micro/mi3.jpg" BORDER="1"  HEIGHT="180" WIDTH="150"></IMG>
                            
                        </td>
                        
                        <td align="left"><td align="left"><font face="Times new Roman"   >
                                <%
            st2 = st[1][0].split("-");
            for (int i = 0; i < st2.length; i++) {
                out.println(st2[i]);%><br><%
            }
                                %><br>
                            <input type="checkbox" name="pro" value="<%= st[0][0]%>"> Add to Cart</font> 
                            
                        </td>
                        
                        <td>
                            <IMG SRC="pic/micro/mi1.jpg" BORDER="1"  HEIGHT="180" WIDTH="150"></IMG> 
                        </td>
                        
                        <td align="left"><td align="left"><font face="Times new Roman"   >
                                <%
            st2 = st[1][1].split("-");
            for (int i = 0; i < st2.length; i++) {
                out.println(st2[i]);%><br><%
            }
                                %><br>
                            <input type="checkbox" name="pro" value="<%= st[0][1]%>"> Add to Cart</font> 
                            
                        </td>
                        
                        <td>
                            <IMG SRC="pic/micro/mi2.jpg" BORDER="1"  HEIGHT="180" WIDTH="150"></IMG> 
                        </td>
                        
                        <td align="left"><td align="left"><font face="Times new Roman"   >
                                <%
            st2 = st[1][2].split("-");
            for (int i = 0; i < st2.length; i++) {
                out.println(st2[i]);%><br><%
            }
                                %><br>
                            <input type="checkbox" name="pro" value="<%= st[0][2]%>"> Add to Cart</font> 
                            
                        </td>
                        
                        <td>
                            <IMG SRC="pic/micro/mi4.jpg" BORDER="1"  HEIGHT="180" WIDTH="150"></IMG> 
                        </td>
                        
                        <td align="left"><td align="left"><font face="Times new Roman"   >
                                <%
            st2 = st[1][3].split("-");
            for (int i = 0; i < st2.length; i++) {
                out.println(st2[i]);%><br><%
            }
                                %><br>
                            <input type="checkbox" name="pro" value="<%= st[0][3]%>"> Add to Cart</font> 
                            
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <IMG SRC="pic/micro/mi5.bmp" BORDER="1"  HEIGHT="180" WIDTH="150"></IMG> 
                        </td>
                        
                        <td align="left"><td align="left"><font face="Times new Roman"   >
                                <%
            st2 = st[1][4].split("-");
            for (int i = 0; i < st2.length; i++) {
                out.println(st2[i]);%><br><%
            }
                                %><br>
                            <input type="checkbox" name="pro" value="<%= st[0][4]%>"> Add to Cart</font> 
                            
                        </td>
                        
                        <td>
                            <IMG SRC="pic/micro/mi6.bmp" BORDER="1"  HEIGHT="180" WIDTH="150"></IMG> 
                        </td>
                        
                        <td align="left"><td align="left"><font face="Times new Roman">
                                <%
            st2 = st[1][5].split("-");
            for (int i = 0; i < st2.length; i++) {
                out.println(st2[i]);%><br><%
            }
                                %><br>
                            <input type="checkbox" name="pro" value="<%= st[0][5]%>"> Add to Cart</font> 
                            
                        </td>
                    </tr>
                    
                </table>
                <font face="Times new Roman" size="+3" color="Orange"><u>WROX</u></font>
                <%

            st = c.buypro("Wrox");

                %>
                <table cellspacing="20">
                    <tr>
                        <td>
                            <IMG SRC="pic/wrox/w3.jpg" BORDER="1"  HEIGHT="180" WIDTH="150"></IMG>
                            
                        </td>
                        
                        <td align="left"><font face="Times new Roman">
                                <%
            st2 = st[1][0].split("-");
            for (int i = 0; i < st2.length; i++) {
                out.println(st2[i]);%><br><%
            }
                                %><br>
                            <input type="checkbox" name="pro" value="<%= st[0][05]%>"> Add to Cart</font> 
                            
                        </td>
                        
                        <td>
                            <IMG SRC="pic/wrox/w1.jpg" BORDER="1"  HEIGHT="180" WIDTH="150"></IMG> 
                        </td>
                        
                        <td align="left"><font face="Times new Roman">
                                <%
            st2 = st[1][1].split("-");
            for (int i = 0; i < st2.length; i++) {
                out.println(st2[i]);%><br><%
            }
                                %><br>
                            <input type="checkbox" name="pro" value="<%= st[0][1]%>"> Add to Cart</font> 
                            
                        </td>
                        
                        <td>
                            <IMG SRC="pic/wrox/w2.jpg" BORDER="1"  HEIGHT="180" WIDTH="150"></IMG> 
                        </td>
                        
                        <td align="left"><font face="Times new Roman">
                                <%
            st2 = st[1][2].split("-");
            for (int i = 0; i < st2.length; i++) {
                out.println(st2[i]);%><br><%
            }
                                %><br>
                            <input type="checkbox" name="pro" value="<%= st[0][2]%>"> Add to Cart</font> 
                            
                        </td>
                        
                        <td>
                            <IMG SRC="pic/wrox/w4.jpg" BORDER="1"  HEIGHT="180" WIDTH="150"></IMG> 
                        </td>
                        
                        <td align="left"><font face="Times new Roman">
                                <%
            st2 = st[1][3].split("-");
            for (int i = 0; i < st2.length; i++) {
                out.println(st2[i]);%><br><%
            }
                                %><br>
                            <input type="checkbox" name="pro" value="<%= st[0][3]%>"> Add to Cart</font> 
                            
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <IMG SRC="pic/wrox/w5.jpg" BORDER="1"  HEIGHT="180" WIDTH="150"></IMG> 
                        </td>
                        
                        <td align="left"><font face="Times new Roman">
                                <%
            st2 = st[1][4].split("-");
            for (int i = 0; i < st2.length; i++) {
                out.println(st2[i]);%><br><%
            }
                                %><br>
                            <input type="checkbox" name="pro" value="<%= st[0][4]%>"> Add to Cart</font> 
                            
                        </td>
                        
                        <td>
                            <IMG SRC="pic/wrox/w6.jpg" BORDER="1"  HEIGHT="180" WIDTH="150"></IMG> 
                        </td>
                        
                        <td align="left"><font face="Times new Roman">
                                <%
            st2 = st[1][5].split("-");
            for (int i = 0; i < st2.length; i++) {
                out.println(st2[i]);%><br><%
            }
                                %><br>
                            <input type="checkbox" name="pro" value="<%= st[0][5]%>"> Add to Cart</font> 
                            
                        </td>
                        
                        <td>
                            <IMG SRC="pic/wrox/w7.jpg" BORDER="1"  HEIGHT="180" WIDTH="150"></IMG> 
                        </td>
                        
                        <td align="left"><font face="Times new Roman">
                                <%
            st2 = st[1][6].split("-");
            for (int i = 0; i < st2.length; i++) {
                out.println(st2[i]);%><br><%
            }
                                %><br>
                            <input type="checkbox" name="pro" value="<%= st[0][6]%>"> Add to Cart</font> 
                            
                        </td>
                    </tr>
                </table>
                <font face="Times new Roman" size="+3" color="Orange"><u>NOVAL</u></font>
                <%

            st = c.buypro("Chetan Bhagat");

                %>
                <table cellspacing="20">
                    <tr>
                        <td>
                            <IMG SRC="pic/noval/ch6.jpg" BORDER="1"  HEIGHT="150" WIDTH="150"></IMG> 
                        </td>
                        
                        <td align="left"><font face="Times new Roman">
                                <%
            st2 = st[1][3].split("-");
            for (int i = 0; i < st2.length; i++) {
                out.println(st2[i]);%><br><%
            }
                                %><br>
                            <input type="checkbox" name="pro" value="<%= st[0][3]%>"> Add to Cart</font> 
                            
                        </td>
                        <td>
                            <IMG SRC="pic/noval/ch3.jpg" BORDER="1"  HEIGHT="150" WIDTH="150"></IMG> 
                        </td>
                        
                        <td align="left"><font face="Times new Roman">
                                <%
            st2 = st[1][0].split("-");
            for (int i = 0; i < st2.length; i++) {
                out.println(st2[i]);%><br><%
            }
                                %><br>
                            <input type="checkbox" name="pro" value="<%= st[0][0]%>"> Add to Cart</font> 
                            
                        </td>
                        
                        <td>
                            <IMG SRC="pic/noval/ch4.jpg" BORDER="1"  HEIGHT="150" WIDTH="150"></IMG> 
                        </td>
                        
                        <td align="left"><font face="Times new Roman">
                                <%
            st2 = st[1][1].split("-");
            for (int i = 0; i < st2.length; i++) {
                out.println(st2[i]);%><br><%
            }
                                %><br>
                            <input type="checkbox" name="pro" value="<%= st[0][1]%>"> Add to Cart</font> 
                            
                        </td>
                        
                        <td>
                            <IMG SRC="pic/noval/ch5.jpg" BORDER="1"  HEIGHT="150" WIDTH="150"></IMG> 
                        </td>
                        <td align="left"><font face="Times new Roman">
                                <%
            st2 = st[1][2].split("-");
            for (int i = 0; i < st2.length; i++) {
                out.println(st2[i]);%><br><%
            }
                                %><br>
                            <input type="checkbox" name="pro" value="<%= st[0][2]%>"> Add to Cart</font> 
                            
                        </td>
                    </tr>
                    <tr> <%   st = c.buypro("Salman Rushdie");

                        %>
                        <td>
                            <IMG SRC="pic/noval/sa3.jpg" BORDER="1"  HEIGHT="180" WIDTH="150"></IMG>
                            
                        </td>
                        
                        <td align="left"><font face="Times new Roman">
                                <%
            st2 = st[1][0].split("-");
            for (int i = 0; i < st2.length; i++) {
                out.println(st2[i]);%><br><%
            }
                                %><br>
                            <input type="checkbox" name="pro" value="<%= st[0][0]%>"> Add to Cart</font>
                        </td>
                        
                        <td>
                            <IMG SRC="pic/noval/sa7.jpg" BORDER="1"  HEIGHT="180" WIDTH="150"></IMG> 
                        </td>
                        
                        <td align="left"><font face="Times new Roman">
                                <%
            st2 = st[1][5].split("-");
            for (int i = 0; i < st2.length; i++) {
                out.println(st2[i]);%><br><%
            }
                                %><br>
                            <input type="checkbox" name="pro" value="<%= st[0][5]%>"> Add to Cart</font>
                        </td>
                        
                        <td>
                            <IMG SRC="pic/noval/sa2.jpg" BORDER="1"  HEIGHT="180" WIDTH="150"></IMG> 
                        </td>
                        
                        <td align="left"><font face="Times new Roman">
                                <%
            st2 = st[1][1].split("-");
            for (int i = 0; i < st2.length; i++) {
                out.println(st2[i]);%><br><%
            }
                                %><br>
                            <input type="checkbox" name="pro" value="<%= st[0][1]%>"> Add to Cart</font>
                        </td>
                        
                        <td>
                            <IMG SRC="pic/noval/sa4.jpg" BORDER="1"  HEIGHT="180" WIDTH="150"></IMG> 
                        </td>
                        
                        <td align="left"><font face="Times new Roman">
                                <%
            st2 = st[1][2].split("-");
            for (int i = 0; i < st2.length; i++) {
                out.println(st2[i]);%><br><%
            }
                                %><br>
                            <input type="checkbox" name="pro" value="<%= st[0][2]%>"> Add to Cart</font>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <IMG SRC="pic/noval/sa5.jpg" BORDER="1"  HEIGHT="180" WIDTH="150"></IMG> 
                        </td>
                        
                        <td align="left"><font face="Times new Roman">
                                <%
            st2 = st[1][3].split("-");
            for (int i = 0; i < st2.length; i++) {
                out.println(st2[i]);%><br><%
            }
                                %><br>
                            <input type="checkbox" name="pro" value="<%= st[0][3]%>"> Add to Cart</font>
                        </td>
                        
                        <td>
                            <IMG SRC="pic/noval/sa6.jpg" BORDER="1"  HEIGHT="180" WIDTH="150"></IMG> 
                        </td>
                        
                        <td align="left"><font face="Times new Roman">
                                <%
            st2 = st[1][4].split("-");
            for (int i = 0; i < st2.length; i++) {
                out.println(st2[i]);%><br><%
            }
                                %><br>
                            <input type="checkbox" name="pro" value="<%= st[0][4]%>"> Add to Cart</font>
                        </td>
                    </tr>
                </table>
                <font face="Times new Roman" size="+3" color="Orange"><u>MAGAZINES</u></font>
                <%   st = c.buypro("Entertainment");

                %>
                <table cellspacing="20">
                    <tr>
                        <td>
                            <IMG SRC="pic/mag2.jpg" BORDER="1"  HEIGHT="150" WIDTH="150"></IMG>
                            
                        </td>
                        
                        <td align="left"><font face="Times new Roman">
                                <%
            st2 = st[1][0].split("-");
            for (int i = 0; i < st2.length; i++) {
                out.println(st2[i]);%><br><%
            }
                                %><br>
                            <input type="checkbox" name="pro" value="<%= st[0][0]%>"> Add to Cart</font>
                        </td>
                        
                        <td>
                            <IMG SRC="pic/mag3.jpg" BORDER="1"  HEIGHT="150" WIDTH="150"></IMG> 
                        </td>
                        
                        <td align="left"><font face="Times new Roman">
                                <%
            st2 = st[1][1].split("-");
            for (int i = 0; i < st2.length; i++) {
                out.println(st2[i]);%><br><%
            }
                                %><br>
                            <input type="checkbox" name="pro" value="<%= st[0][1]%>"> Add to Cart</font>
                        </td>
                        
                        <td>
                            <IMG SRC="pic/mag4.jpg" BORDER="1"  HEIGHT="150" WIDTH="150"></IMG> 
                        </td>
                        
                        <td align="left"><font face="Times new Roman">
                                <%
            st2 = st[1][2].split("-");
            for (int i = 0; i < st2.length; i++) {
                out.println(st2[i]);%><br><%
            }
                                %><br>
                            <input type="checkbox" name="pro" value="<%= st[0][2]%>"> Add to Cart</font>
                        </td>
                        
                        <td>
                            <IMG SRC="pic/mag5.jpg" BORDER="1"  HEIGHT="150" WIDTH="150"></IMG> 
                        </td>
                        
                        <td align="left"><font face="Times new Roman">
                                <%
            st2 = st[1][3].split("-");
            for (int i = 0; i < st2.length; i++) {
                out.println(st2[i]);%><br><%
            }
                                %><br>
                            <input type="checkbox" name="pro" value="<%= st[0][3]%>"> Add to Cart</font>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <IMG SRC="pic/mag7.jpg" BORDER="1"  HEIGHT="150" WIDTH="150"></IMG> 
                        </td>
                        
                        <td align="left"><font face="Times new Roman">
                                <%
            st2 = st[1][4].split("-");
            for (int i = 0; i < st2.length; i++) {
                out.println(st2[i]);%><br><%
            }
                                %><br>
                            <input type="checkbox" name="pro" value="<%= st[0][4]%>"> Add to Cart</font>
                        </td>
                        
                        <td>
                            <IMG SRC="pic/mag8.jpg" BORDER="1"  HEIGHT="150" WIDTH="150"></IMG> 
                        </td>
                        
                        <td align="left"><font face="Times new Roman">
                                <%
            st2 = st[1][5].split("-");
            for (int i = 0; i < st2.length; i++) {
                out.println(st2[i]);%><br><%
            }
                                %><br>
                            <input type="checkbox" name="pro" value="<%= st[0][5]%>"> Add to Cart</font>
                        </td>
                        
                        <td>
                            <IMG SRC="pic/mag1.jpg" BORDER="1"  HEIGHT="150" WIDTH="150"></IMG> 
                        </td>
                        
                        <td align="left"><font face="Times new Roman">
                                <%
            st2 = st[1][6].split("-");
            for (int i = 0; i < st2.length; i++) {
                out.println(st2[i]);%><br><%
            }
                                %><br>
                            <input type="checkbox" name="pro" value="<%= st[0][6]%>"> Add to Cart</font>
                        </td>
                        
                        
                </tr></table><font face="Times new Roman" size="+3" color="Orange"><u>Utilites</u></font>
                <%   st = c.buypro("Utility");

                %>
                <table cellspacing="20">
                    <tr>
                        <td>
                            <IMG SRC="pic/uti/ut3.jpg" BORDER="1"  HEIGHT="180" WIDTH="150"></IMG>
                            
                        </td>
                        
                        <td align="left"><font face="Times new Roman">
                                <%
            st2 = st[1][0].split("-");
            for (int i = 0; i < st2.length; i++) {
                out.println(st2[i]);%><br><%
            }
                                %><br>
                            <input type="checkbox" name="pro" value="<%= st[0][0]%>"> Add to Cart</font>
                        </td>
                        
                        <td>
                            <IMG SRC="pic/uti/ut1.jpg" BORDER="1"  HEIGHT="180" WIDTH="150"></IMG> 
                        </td>
                        
                        <td align="left"><font face="Times new Roman">
                                <%
            st2 = st[1][6].split("-");
            for (int i = 0; i < st2.length; i++) {
                out.println(st2[i]);%><br><%
            }
                                %><br>
                            <input type="checkbox" name="pro" value="<%= st[0][6]%>"> Add to Cart</font>
                        </td>
                        
                        <td>
                            <IMG SRC="pic/uti/ut2.jpg" BORDER="1"  HEIGHT="180" WIDTH="150"></IMG> 
                        </td>
                        
                        <td align="left"><font face="Times new Roman">
                                <%
            st2 = st[1][5].split("-");
            for (int i = 0; i < st2.length; i++) {
                out.println(st2[i]);%><br><%
            }
                                %><br>
                            <input type="checkbox" name="pro" value="<%= st[0][5]%>"> Add to Cart</font>
                        </td>
                        
                        <td>
                            <IMG SRC="pic/uti/ut4.jpg" BORDER="1"  HEIGHT="180" WIDTH="150"></IMG> 
                        </td>
                        
                        <td align="left"><font face="Times new Roman">
                                <%
            st2 = st[1][2].split("-");
            for (int i = 0; i < st2.length; i++) {
                out.println(st2[i]);%><br><%
            }
                                %><br>
                            <input type="checkbox" name="pro" value="<%= st[0][2]%>"> Add to Cart</font>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <IMG SRC="pic/uti/ut5.jpg" BORDER="1"  HEIGHT="180" WIDTH="150"></IMG> 
                        </td>
                        
                        <td align="left"><font face="Times new Roman">
                                <%
            st2 = st[1][3].split("-");
            for (int i = 0; i < st2.length; i++) {
                out.println(st2[i]);%><br><%
            }
                                %><br>
                            <input type="checkbox" name="pro" value="<%= st[0][3]%>"> Add to Cart</font>
                        </td>
                        
                        <td>
                            <IMG SRC="pic/uti/ut6.jpg" BORDER="1"  HEIGHT="180" WIDTH="150"></IMG> 
                        </td>
                        
                        <td align="left"><font face="Times new Roman">
                                <%
            st2 = st[1][4].split("-");
            for (int i = 0; i < st2.length; i++) {
                out.println(st2[i]);%><br><%
            }
                                %><br>
                            <input type="checkbox" name="pro" value="<%= st[0][4]%>"> Add to Cart</font>
                        </td>
                        
                        <td>
                            <IMG SRC="pic/uti/ut7.jpg" BORDER="1"  HEIGHT="180" WIDTH="150"></IMG> 
                        </td>
                        
                        <td align="left"><font face="Times new Roman">
                                <%
            st2 = st[1][1].split("-");
            for (int i = 0; i < st2.length; i++) {
                out.println(st2[i]);%><br><%
            }
                                %><br>
                            <input type="checkbox" name="pro" value="<%= st[0][1]%>"> Add to Cart</font>
                        </td>
                    </tr>
                    
                </table>
                <input type="submit" name="sub" value="Gernate Bill">          <input type="reset" value="Cancel">
        </Form></center>
    </body>
</html>
