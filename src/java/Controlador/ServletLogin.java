/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Login.GSLogin;
import Modelo.Login.Login;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

/**
 *
 * @author KnokinGm
 */
@WebServlet(name = "ServletLogin", urlPatterns = {"/ServletLogin"})
public class ServletLogin extends HttpServlet {
    private String u,c;
private int r;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       PrintWriter out = response.getWriter();
       
         if (request.getParameter("Entrar")!=null) {
            this.Login(request, response);
        }
       
       
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
  protected void Login(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       PrintWriter out = response.getWriter();
       
        String us,co;
        us=request.getParameter("Usuario");
        co=request.getParameter("Clave");
        GSLogin in = new GSLogin(us, co);
        Login log = new Login();
        ArrayList<GSLogin> arreglo = new ArrayList<>();
        
        arreglo = log.login(in);
        JOptionPane.showMessageDialog(null, arreglo.size());
        
        if(arreglo.size()>0){
            
            for (int i = 0; i < arreglo.size() ; i++) {
                in=arreglo.get(i);
                u=in.getUsu();
                c=in.getCla();
                r=in.getRol();

            }
            
        if((u.equals(us)) && (c.equals(co))){
            if(r==1){
            JOptionPane.showMessageDialog(null,"Administrador");
            response.sendRedirect("Administrador/Menu/Administrador.jsp");
            }
            else if(r==2){
            JOptionPane.showMessageDialog(null, "Funcionario");
            response.sendRedirect("Funcionario/Menu/Funcionario.jsp");    
            }
            else if(r==3){
            JOptionPane.showMessageDialog(null, "Veterinaria");
            response.sendRedirect("Veterinaria/Login/loginV.jsp");    
            }
            else if(r==4){
            JOptionPane.showMessageDialog(null, "Ciudadano");
            HttpSession htt=request.getSession();
            String naom=request.getParameter("Usuario");
            String dato= new String(naom);
            htt.setAttribute("nom", dato);
            response.sendRedirect("Ciudadano/Login/login.jsp");    
            }
            else{
            }
        }
        }
        else{
            out.print("Usted no es un Usuario Registrado");
            response.sendRedirect("Login/inicio.jsp");
        }
        }
        
        
    }

