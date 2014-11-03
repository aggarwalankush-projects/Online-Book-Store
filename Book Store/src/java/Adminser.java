/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.*;


import javax.servlet.*;
import javax.servlet.http.*;

/**
 *
 * @author lucky
 */
public class Adminser extends HttpServlet {
   
    /** 
    * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
    * @param request servlet request
    * @param response servlet response
    */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String val="pro";
        PrintWriter out = response.getWriter();
        try {
          String sub =  request.getParameter("sub");
          if(sub.equals("Insert"))
          {
            String p =  request.getParameter("code");
              String n = request.getParameter("name");
               String m= request.getParameter("man");
              String t = request.getParameter("type");
              int pr = Integer.parseInt(request.getParameter("price"));
              String d = request.getParameter("des");
               int qu = Integer.parseInt(request.getParameter("qu"));
              Conn c = new Conn();
              int i = c.insertPro(p,n, m,pr,t,d,qu);
              if(i == 1)
              {
                  val = "Pinsert.jsp?val=ins";
              }
              else
                  val = "Pinsert.jsp?val=pro";
          }
          else if(sub.equals("Delete"))
          {
              String p =  request.getParameter("code");
              
              Conn c = new Conn();
              int i = c.delPro(p);
              if(i == 1)
              {
                  val = "Pdel.jsp?val=del";
              }
              else
                  val = "Pdel.jsp?val=pro";
          }
          else if(sub.equals("Search"))
          {
              String p =  request.getParameter("code");
              
              Conn c = new Conn();
              String []v  = c.upPro(p);
              if(v != null)
              {
                  val = "Pup.jsp?code"+p+"&name="+v[1]+"&man="+v[2]+"&price="+v[3]+"&type="+v[4]+"&des="+v[5]+"&qu="+v[6];
              }
              else
                  val = "Pser.jsp?val=pro";
          }
          else if(sub.equals("UpDate"))
          {
             String p =  request.getParameter("code");
              String n = request.getParameter("name");
               String m= request.getParameter("man");
              String t = request.getParameter("type");
              int pr = Integer.parseInt(request.getParameter("price"));
              String d = request.getParameter("des");
              int q = Integer.parseInt(request.getParameter("qu"));
              Conn c = new Conn();
              int i = c.upPro(p,n, m,pr,t,d,q);
              if(i == 1)
              {
                  val = "Pser.jsp?val=up";
              }
              else
                  val = "Pser.jsp?val=pro";
             
              
              
              
          }
          else if(sub.equals("Login"))
          {
             String p =  request.getParameter("pass");
              String n = request.getParameter("nm");
              Conn c = new Conn();
              int i = c.log(n,p);
              if(i == 1)
              {
                  HttpSession hs = request.getSession();
                  hs.setAttribute("login", "Aptech");
                  val = "Pinsert.jsp";
              }
              else
                   val = "index.jsp";
            
              
              
              
          }
          RequestDispatcher rd = request.getRequestDispatcher(val);
           rd.forward(request, response);
        } finally { 
            out.close();
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
    * Handles the HTTP <code>GET</code> method.
    * @param request servlet request
    * @param response servlet response
    */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    /** 
    * Handles the HTTP <code>POST</code> method.
    * @param request servlet request
    * @param response servlet response
    */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
    * Returns a short description of the servlet.
    */
    public String getServletInfo() {
        return "Short description";
    }
    // </editor-fold>
}
