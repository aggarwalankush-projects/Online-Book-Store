<%-- 
    Document   : Custinfo
    Created on : Oct 20, 2010, 10:32:14 PM
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
        <br><br><br>
             <center><font face="Times new Roman" size="8" color="Orange">Order Form<hr  width="210"></font></center>
             <table   cellpadding="90"><tr ><td align="left">
                 <%
                 String co = request.getParameter("co");
                 if(co != null)
                     {
                     RequestDispatcher rd = request.getRequestDispatcher("Bill.jsp");
                     rd.forward(request, response);
                                  }
                 %>
             <form action="Bill.jsp" method="post">
              <pre>          <font face="Times new Roman" size="4">
            Name      : <input type="text" name="nm" size="35" />
            
            E-Mail    : <input type="text" name="mail" size="35" />
            
            Contact   : <input type="text" name="con" size="35" />
            
            Distance  : <input tabindex="text" name = "dis" size="35" />
            
            Payment Mode: <select name ='type'>
                        <option>Demand Draft</option>
                        <option>cash/cheque</option>
                        <option>Credit Card</option>
            </select>
            
            Address  :
            
                             <textarea cols="25" rows="5" name="add"></textarea>
                                 
                      <input type="submit" Value ="Submit" name="sub" />         <input type="reset" value="Cancel" />  </font>   </pre>
                      <% String pro[] = request.getParameterValues("pro");
             for(int i =0;i<pro.length;i++)
                 {
                 %>
                 <input type="hidden" name="pro" value="<%=pro[i] %>">
                 <%
                 }
             
             %>
        
</form></td>
<td valign="top"> <font face="Times new Roman" size="4">
        <table cellpadding="10" ><tr><td align="left">  <font face="Times new Roman" size="4" color="Orange">  Product Name<br><br></font></td><td><font face="Times new Roman" size="4" color="Orange">  Price<br><br></font></td>
     <%  
          pack.Conn c = new pack.Conn();
          int sum = 0;
           for(int i =0;i<pro.length;i++)
                 {
                  c = new pack.Conn();
                 String []ar = c.billpro(pro[i]);
         %><tr><%out.println("<td align='left'>"+ar[0]+"</td><td align='right'> "+ar[1]+"</td></tr>");
         sum= sum+Integer.parseInt(ar[1]);
                 }
             
             %>
            <tr><td align="left" valign="bottom"><br><br>Total Amount</td><td valign="bottom" align="right"><br><br><%= sum %></td></tr>
             </table>
</font></td>
</tr></table>
        <font face="Times new Roman" size="+2" color="orange">
            *Apart from the Product Charges, the Delivery charges will be Nil, if
            distance is less than3 KMs and if distance more than 3KMs is as per the
            Delivery charges based on the type of the delivery chosen.
        </font>
         
    </body>
</html>
