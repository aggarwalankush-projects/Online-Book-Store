/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pack;

import java.io.*;
import java.net.*;

import javax.servlet.*;
import javax.servlet.http.*;

/**
 *
 * @author lucky
 */
public class helper extends HttpServlet {
   
    /** 
    * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
    * @param request servlet request
    * @param response servlet response
    */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            
            String sub = request.getParameter("sub");
            Conn co = new Conn();
            if(sub.equals("Remove"))
            {
                String code = request.getParameter("code");
                String pro[] = request.getParameterValues("pro");
                if(pro!= null)
                for(int i = 0;i<pro.length;i++)
                {
                    co.orderdelete2(code,pro[i]);
                }
                response.sendRedirect("Updateord.jsp?code="+code);
            }
            else if(sub.equals("Update"))
            {
               String code = request.getParameter("code");
                response.sendRedirect("Updateord.jsp?code="+code); 
            }
            
            else if(sub.equals("Add Products"))
            {
               String code = request.getParameter("code");
                response.sendRedirect("BuyaPro.jsp?code="+code); 
            }
            else if(sub.equals("Remove Products"))
            {
                String code = request.getParameter("code");
                response.sendRedirect("Updateord.jsp?code="+code+"&rem=1");
            }
                else if(sub.equals(" Cancel Order "))
            {
                 String code = request.getParameter("code");
                int i = co.orderdel(code);
                if(i>0)
                {
                    response.sendRedirect("Cancelord.jsp?val=done");
                }
                else
                {
                    response.sendRedirect("Cancelord.jsp?val=pro");
                }
            }else{
            String n = request.getParameter("nm");
            String m = request.getParameter("mail");
            String c = request.getParameter("con");
            String q = request.getParameter("qu");
            
            
           
            if(sub.equals("Submit"))
            {
                
            String qb = request.getParameter("qb");
            String d = request.getParameter("ds");
            int i = co.feed(n, m, c, qb, d, q);
            if(i==1)
            {
                response.sendRedirect("index.jsp");
            }
            else
            {
                response.sendRedirect("Feedback.jsp?val=pro");
            }
            }
            if(sub.equals("Contact"))
            {
                int i = co.cont(n, m, c, q);
            if(i==1)
            {
                response.sendRedirect("index.jsp");
            }
            else
            {
                response.sendRedirect("Contact.jsp?val=pro");
            } 
            }}
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
