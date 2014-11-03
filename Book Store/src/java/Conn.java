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
       // Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
     
        //return DriverManager.getConnection("jdbc:odbc:BookStore");
       Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        return DriverManager.getConnection("jdbc:sqlserver://localhost:1433;DataBaseName=BookStore;user=sa;password=gourav");

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
                String t = rs.getString(2);
                t += rs.getString(3);
                t +=rs.getInt(4);
                t +=rs.getString(6);
                st[i]=t;i++;
            }
            }
        catch(Exception e){
            e.printStackTrace();
        }
        return st;
    }
    public  int insertPro(String code, String name,String man,int price,String type,String des,int q)	
	{
        try{
		Connection con = create();
                PreparedStatement stmt = con.prepareStatement("insert into products values(?,?,?,?,?,?)");
                stmt.setString(1,code);
                stmt.setString(2,name);
                stmt.setString(3,man);
                stmt.setInt(4,price);
                stmt.setString(5,type);
                stmt.setString(6,des);
               stmt.execute(); 
               con.close();
               con = create();
               stmt = con.prepareStatement("insert into stock values(?,?)");
                stmt.setString(1,code);
                stmt.setInt(2, q);
                stmt.execute();
               return 1;

	
        }
        catch(Exception e){
            e.printStackTrace();
           
            return 0;
        }
        
	}
 public  int delPro(String code)	
	{
        try{
		Connection con = create();
                PreparedStatement stmt = con.prepareStatement("delete from products where pro_code = ?");
                stmt.setString(1,code);
                stmt.execute(); 
                con.close();
                 con = create();
                 stmt = con.prepareStatement("delete from stock where pro_code = ?");
                stmt.setString(1,code);
                stmt.execute(); 
                con.close();
               return 1;
        }
        catch(Exception e){
            e.printStackTrace();
            return 0;
        }
	}
 public  int serPro(String code)	
	{
        try{
		Connection con = create();
                PreparedStatement stmt = con.prepareStatement("Select * from products where pro_code = ?");
                stmt.setString(1,code);
                ResultSet rs =  stmt.executeQuery(); 
                if(rs != null)
                    return 1;
               
                con.close();
               
        }
        catch(Exception e){
            e.printStackTrace();
           
        }
        return 0;
	}
  public  String[] upPro(String code)	
	{String v[]=null;
        try{
		Connection con = create();
                PreparedStatement stmt = con.prepareStatement("Select  * from products where pro_code = ?");
                stmt.setString(1,code);
                ResultSet rs = stmt.executeQuery(); 
               
                if(rs.next())
                { v  = new String[7];
                    v[0] = rs.getString(1);
                    v[1] = rs.getString(2);
                    v[2] = rs.getString(3);
                    v[3] = String.valueOf(rs.getInt(4));
                    v[4] = rs.getString(5);
                    v[5] = rs.getString(6);
                }
                con = create();
                stmt = con.prepareStatement("Select  * from stock where pro_code = ?");
                stmt.setString(1,code);
                rs = stmt.executeQuery(); 
                if(rs.next())
                {
                    v[6]=String.valueOf(rs.getInt(2));
                }
                con.close();
               
        }
        catch(Exception e){
            e.printStackTrace();
            
        }
         return v;
	}
   public  int upPro(String code, String name,String man,int price,String type,String des,int q)	
	{
        try{
                delPro(code);
               return insertPro(code, name, man, price, type, des,q);
        }
        catch(Exception e){
            e.printStackTrace();
           
            return 0;
        }
        
	}
    public  int log(String n,String p)	
	{
        try{
		Connection con = create();
                PreparedStatement stmt = con.prepareStatement("Select * from admin where admin_name    = ? and password = ?");
                stmt.setString(1,n);
                stmt.setString(2, p);
                ResultSet rs = stmt.executeQuery(); 
                
                if(rs.next())
               return 1;
                else
                    return 0;
                
        }
        catch(Exception e){
            
            e.printStackTrace();
            return 0;
        }
	}
}
