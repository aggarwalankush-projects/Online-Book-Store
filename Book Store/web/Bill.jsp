<%-- 
    Document   : Bill
    Created on : Oct 20, 2010, 11:02:58 PM
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
        <center><font face="Times new Roman" size="8" color="Orange"><u>Bill</u></font><br><br><br>
            <font face="Times new Roman" size="+2">
            Order Code   :   <% pack.Conn c = new pack.Conn(); 
                        String co = request.getParameter("co");
                         String pro[] = request.getParameterValues("pro");
                         String code =null;
                            
                            String n =null;
                            String mail = null;
                            String con = null;
                            int con2 = 0;
                            String add = null;
                            String ty = null;
                            int res=1,res2=1;
                             int dis = 0;
                        if(co != null )
                            {
                            code = co;
                            String tyd[] = c.tydis(co);
                            ty = tyd[1];
                            dis = Integer.parseInt(tyd[0]);
                        }
                             else{
                            code = c.ordercode();
                             n = request.getParameter("nm");
                            mail = request.getParameter("mail");
                            con = request.getParameter("con");
                            con2 = Integer.parseInt(con);
                            add = request.getParameter("add");
                            ty = request.getParameter("type");
                            dis = Integer.parseInt(request.getParameter("dis"));
             res =  c.custInfo(code,n,mail,con2,dis,ty, add);
             }
                             c.orderdelete(code);
             res2 = c.proOrder(code, pro);
            if(res != 1 && res2 != 1)
                {
                request.setAttribute("work","error");
            }
            else
                {
                request.setAttribute("work","pass");
            }
            out.println(code);
         int d=0; 
          if(dis>3)
          {
            d  = c.billdel(ty);
          }
          int sum = d;
                        %></font>
                        </center>
             <font face="Times new Roman" size="+1">
             <center>    <table cellspacing="30" > <tr><td align="left">    Product Name</td><td>  Price</td><br><br>
          <% 
                  
            
           for(int i =0;i<pro.length;i++)
                 {
                  c = new pack.Conn();
                 String []ar = c.billpro(pro[i]);
         %><tr><%out.println("<td align='left'>"+ar[0]+"</td><td algin = 'right'> "+ar[1]+"</td></tr>");
         sum= sum+Integer.parseInt(ar[1]);
                 }
             
             %>
             <tr><td align="left">Delivery charges</td><td><%= d %></td></tr>
             <tr><td align="left">Total Payable Amount</td><td><%= sum %></td></tr>
         </table>
         <font face="Times new Roman" size="+2" color="Orange">
             <% String wo = (String)request.getAttribute("work");
             if(wo.equals("pass")){
        %>Order Placed Successfully!!!<%}else{             %>There is Some Error Try Again!!<%}%> <br> Must Remember Your Order Code to Track Your Order</font>
         
         </center>
     </font>
    </body>
</html>
