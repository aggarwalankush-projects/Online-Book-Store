<body>
<center><font face="Times new Roman" size="7" color="Orange">GM General Book Stores</font>
        <br><br><br><br>
        <% String str = request.getParameter("code");
        if(str != null){
        String rem = request.getParameter("rem");
        pack.Conn c = new pack.Conn();
          String st[][] =   c.Uporder(str);
          if(st != null){
         if(rem != null){      %>
        <form action = 'helper' method = 'get'>
            <table cellspacing="15"><tr><td>Product Name</td><td align="left">Price</td></tr>
            <%  String arr [] = c.Uporder3(str);
          for(int i =0;i<st.length;i++)
         {   %>
          <tr><td align="left"> <input type="checkbox" name=pro value="<%= arr[i]%>"><%= st[i][0]%></td><td align="right"><%= st[i][1]%></td></tr>
             
                <%}
        %><tr><td> <input type = submit value="Remove" name="sub"></td></tr></table>
         <input type="hidden" name = code value="<%=str %>">
        </form><%
        
         } else
         {     
            %>   <form action = 'helper' method = 'get'><table cellspacing="15">
                    <tr><td>Product Name</td><td align="right">Price</td></tr>
           <%   for(int i =0;i<st.length;i++)
         {   %> 
        
        <tr><td align="left">   <%= st[i][0]%></td><td align="right"><%= st[i][1]%></td></tr>
                <%}
                %>  <tr><td><input type = submit value="Add Products" name="sub"></td><td>
                   <input type = submit value="Remove Products" name="sub"></td><tr>
          <%}
              %></table>
                 <input type="hidden" name = code value="<%=str %>">
                    
            </form><%} else
          out.println("Please Enter a Valid Order Code");
        }%></center>
  </body>
