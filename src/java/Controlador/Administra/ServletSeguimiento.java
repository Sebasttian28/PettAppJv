/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador.Administra;

import Modelo.Administrador.Postulacion.GSPostulacionAdmin;
import Modelo.Administrador.Postulacion.Postulacion;
import Modelo.Administrador.Seguimiento.GSSeguimientoAdmin;
import Modelo.Administrador.Seguimiento.Seguimiento;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author SENA
 */
@MultipartConfig
@WebServlet(name = "ServletSeguimiento", urlPatterns = {"/ServletSeguimiento"})
public class ServletSeguimiento extends HttpServlet {

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
        
        if (request.getParameter("seguimien")!=null) {
            this.IngresarSeguimiento(request, response);
        }
    }

     protected void IngresarSeguimiento(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String tel,dir,fij,ced,ubi,tvi,cer,cpf,rpub;
        int codp,coda,est,resi,rpun;
        codp=Integer.parseInt(request.getParameter("codigo"));
        tel=request.getParameter("telefono");
        dir=request.getParameter("direccion");
        fij=request.getParameter("fijo");
        cer=request.getParameter("cerp");
        cpf=request.getParameter("cpf");
        est=Integer.parseInt(request.getParameter("est"));
        resi=Integer.parseInt(request.getParameter("resi"));
        ubi=request.getParameter("ubi");
        tvi=request.getParameter("tvi");
        rpun=Integer.parseInt(request.getParameter("repun"));
        rpub=request.getParameter("rpub");
        ced=request.getParameter("cedula");
        coda=Integer.parseInt(request.getParameter("animal"));
   
        GSSeguimientoAdmin con=new GSSeguimientoAdmin(codp,tel,dir,fij,cer,cpf,est,resi,ubi,tvi,rpun,rpub,ced,coda);
        Seguimiento in=new Seguimiento();
        in.Ingresar_segui(con);
        response.sendRedirect("Funcionario/Seguimiento/Continuar_Postulacion.jsp");

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

}
