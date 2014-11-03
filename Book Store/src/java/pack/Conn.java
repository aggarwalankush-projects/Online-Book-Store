package pack;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author lucky
 */
import java.sql.*;
public class Conn {
    public Connection create() throws Exception
    {
        //  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
     
        //return DriverManager.getConnection("jdbc:odbc:BookStore");
      Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        return DriverManager.getConnection("jdbc:sqlserver://localhost:1433;DataBaseName=bookstore;user=sa;password=gourav");

    }
    public int feed(String n,String mail,String co,String qob,String qod,String q)
    {
        int i=0;
        try{
            Connection con = create();
            PreparedStatement stmt = con.prepareStatement("insert into faq values(?,?,?,?,?,?) ");
            stmt.setString(1,n);
            stmt.setString(2,q);
            stmt.setString(3,co);
            stmt.setString(4,qob);
            stmt.setString(5,qod);
            stmt.setString(6,mail);
            stmt.execute();
            i  = stmt.getUpdateCount();
            }
        catch(Exception e){
            e.printStackTrace();
        }
        return i;
    }
    public int cont(String n,String mail,String co,String q)
    {
        int i=0;
        try{
            Connection con = create();
            PreparedStatement stmt = con.prepareStatement("insert into contact values(?,?,?,?) ");
            stmt.setString(1,n);
            stmt.setString(2,q);
            stmt.setString(3,co);
            stmt.setString(4,mail);
            stmt.execute();
            i  = stmt.getUpdateCount();
            }
        catch(Exception e){
            e.printStackTrace();
        }
        return i;
    }
    public String[] infor(String str)
    {
        String []st = null;
        try{
            Connection con = create();
            PreparedStatement stmt = con.prepareStatement("select * from products where Manufacturer like ?");
            stmt.setString(1,str);
            ResultSet rs = stmt.executeQuery();
            int i=0;
            while(rs.next())
            {
                i++;
            }
            stmt = con.prepareStatement("select * from products where Manufacturer like ?");
            stmt.setString(1,str);
            rs = stmt.executeQuery();
            st = new String[i];
            i=0;
            while(rs.next())
            {
                st[i]=rs.getString(6);
                i++;
            }
            }
        catch(Exception e){
            e.printStackTrace();
        }
        return st;
    }
    public String[][] buypro(String str)
    {
        String [][]st = new String[2][];
        
        try{
            Connection con = create();
            PreparedStatement stmt = con.prepareStatement("select * from products where Manufacturer like ?");
            stmt.setString(1,str);
            ResultSet rs = stmt.executeQuery();
            int i=0;
            while(rs.next())
            {
                i++;
            }
            stmt = con.prepareStatement("select * from products where Manufacturer like ?");
            stmt.setString(1,str);
            rs = stmt.executeQuery();
            st[0] = new String[i];
            st[1] = new String[i];
            i=0;
            while(rs.next())
            {
                st[0][i]=rs.getString(1);
                st[1][i]=rs.getString(2)+"- Price : "+rs.getInt(4);
                i++;
            }
            }
        catch(Exception e){
            e.printStackTrace();
        }
        return st;
    }
    public String[] billpro(String str)
    {
        String []st = null;
        try{
            Connection con = create();
            PreparedStatement stmt = con.prepareStatement("select * from products where pro_code like ?");
            stmt.setString(1,str);
            ResultSet rs = stmt.executeQuery();
            st = new String[2];
            while(rs.next())
            {
                st[0]=rs.getString(2);
                st[1]=String.valueOf(rs.getInt(4));
            }
    }
        catch(Exception e){
            e.printStackTrace();
        }
        return st;
    }
     public int billdel(String str)
    {
        int i=0;
        try{
            Connection con = create();
            PreparedStatement stmt = con.prepareStatement("select * from del_charge where charge_type like ?");
            stmt.setString(1,str);
            ResultSet rs = stmt.executeQuery();
            
            if(rs.next())
            {
              i=rs.getInt(2);
            }
            else
            {
                i=0;
            }
    }
        catch(Exception e){
            e.printStackTrace();
        }
        return i;
    }
     public String ordercode()
    {
        String i=null;
        try{
            Connection con = create();
            PreparedStatement stmt = con.prepareStatement("select * from Customer");
            ResultSet rs = stmt.executeQuery();
             if(rs.next())
            {   int c;
              c=Integer.parseInt(rs.getString(1));
              while(rs.next())
              {
                  c=Integer.parseInt(rs.getString(1))+1;
              }
              
              i=String.valueOf(c);
              int count = i.length();
               for(int j =8;j>count;j--)
               {
                   i="0"+i;                   
               }
            }
            else
            {
                i="00000001";
            }
    }
        catch(Exception e){
            e.printStackTrace();
        }
        return i;
    }
      public int custInfo(String code,String n,String mail,int co,int d,String pay,String add)
    {
        
        try{
            Connection con = create();
            PreparedStatement stmt = con.prepareStatement("insert into Customer values(?,?,?,?,?,?,?)");
            stmt.setString(1,code);
            stmt.setString(2,n);
            stmt.setString(3,mail);
            stmt.setInt(4 ,co);
            stmt.setInt(5 ,d);
            stmt.setString(6,pay);
            stmt.setString(7,add);
            stmt.execute();
            return 1;
    }
        catch(Exception e){
            e.printStackTrace();
            return 0;
        }
        
    }
      public int proOrder(String code,String pro[])
    {
        
        try{
            Connection con = create();
            for(int i=0;i<pro.length;i++)
            {
            PreparedStatement stmt = con.prepareStatement("insert into Order_Detail values(?,?)");
            stmt.setString(1,code);
            stmt.setString(2,pro[i]);
            stmt.execute();
            }
            return 1;
    }
        catch(Exception e){
            e.printStackTrace();
            return 0;
        }
        
    }
       public int orderdel(String str)
    {
        int i=0;
        try{
            Connection con = create();
            PreparedStatement stmt = con.prepareStatement("delete from Order_Detail where order_code like ?");
            stmt.setString(1,str);
            stmt.execute();
           
            stmt = con.prepareStatement("delete from customer where order_code like ?");
            stmt.setString(1,str);
            stmt.execute();
           i= stmt.getUpdateCount();
            
             }
        catch(Exception e){
            e.printStackTrace();
        }
        return i;
    }
        public String[][] Uporder(String str)
    {
        String [][]st = null;
        try{
            Connection con = create();
            PreparedStatement stmt = con.prepareStatement("select * from Order_detail where order_code like ?");
            stmt.setString(1,str);
            ResultSet rs = stmt.executeQuery();
            int i =0;
            while(rs.next())
            {
                i++;                
            }
            stmt.setString(1,str);
            rs = stmt.executeQuery();
            if(i>0)
            {
            st= new String[i][];
            i=0;
            while(rs.next())
            {
               st[i] =  billpro(rs.getString(2));
               i++;
            }
            }
    }
        catch(Exception e){
            e.printStackTrace();
        }
        return st;
    }
         public String[] Uporder2(String str)
    {
        String []st = null;
        try{
            Connection con = create();
            PreparedStatement stmt = con.prepareStatement("select * from Order_detail where order_code like ?");
            stmt.setString(1,str);
            ResultSet rs = stmt.executeQuery();
            int i =0;
            while(rs.next())
            {
                i++;                
            }
            stmt.setString(1,str);
            rs = stmt.executeQuery();
            st= new String[i];
            i=0;
            while(rs.next())
            {
               st[i] =  rs.getString(2);
               i++;
            }
    }
        catch(Exception e){
            e.printStackTrace();
        }
        return st;
    }
            public String[] Uporder3(String str)
    {
        String []st = null;
        try{
            Connection con = create();
            PreparedStatement stmt = con.prepareStatement("select * from Order_detail where order_code like ?");
            stmt.setString(1,str);
            ResultSet rs = stmt.executeQuery();
            int i =0;
            while(rs.next())
            {
                i++;                
            }
            stmt.setString(1,str);
            rs = stmt.executeQuery();
            st= new String[i];
            i=0;
            while(rs.next())
            {
               st[i] =  rs.getString(2);
               i++;
            }
    }
        catch(Exception e){
            e.printStackTrace();
        }
        return st;
    }
         public String[] tydis(String str)
    {
        String []st = null;
        try{
            Connection con = create();
            PreparedStatement stmt = con.prepareStatement("select * from Customer where order_code like ?");
            stmt.setString(1,str);
            ResultSet rs = stmt.executeQuery();
            st= new String[2];
             while(rs.next())
            {
               st[0] = String.valueOf(rs.getInt(5));
              st[1] = rs.getString(6);
            }
    }
        catch(Exception e){
            e.printStackTrace();
        }
        return st;
    }
          public int orderdelete(String str)
    {
        int i=0;
        try{
            Connection con = create();
            PreparedStatement stmt = con.prepareStatement("delete from Order_Detail where order_code like ?");
            stmt.setString(1,str);
            stmt.execute();
            i= stmt.getUpdateCount();
            
             }
        catch(Exception e){
            e.printStackTrace();
        }
        return i;
    }
           public int orderdelete2(String str,String pro)
    {
        int i=0;
        try{
            Connection con = create();
            PreparedStatement stmt = con.prepareStatement("delete from Order_Detail where order_code like ? and pro_code like ?");
            stmt.setString(1,str);
            stmt.setString(2,pro);
            stmt.execute();
            i= stmt.getUpdateCount();
            
             }
        catch(Exception e){
            e.printStackTrace();
        }
        return i;
    }
  }

