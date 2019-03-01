/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador.Administra;

import Modelo.Administrador.Postulacion.GSPostulacionAdmin;
import Modelo.Administrador.Postulacion.Postulacion;
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
import javax.swing.JOptionPane;

/**
 *
 * @author KnokinGm
 */
@MultipartConfig
@WebServlet(name = "ServletPostulacion1", urlPatterns = {"/ServletPostulacion1"})
public class ServletPostulacion1 extends HttpServlet {

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
        
         if (request.getParameter("ingpostu")!=null) {
            this.IngresoPostulacion(request, response);
      
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
 protected void IngresoPostulacion(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       PrintWriter out = response.getWriter();
       
         String tel,dir,fij,ced,ubi,tvi;
        int coda,est,resi,rpun;
        tel=request.getParameter("telefono");
        dir=request.getParameter("direccion");
        fij=request.getParameter("fijo");
        est=Integer.parseInt(request.getParameter("estrato"));
        resi=Integer.parseInt(request.getParameter("residentes"));
        ubi=request.getParameter("ubicacion");
        tvi=request.getParameter("tvivienda");
        rpun=Integer.parseInt(request.getParameter("rpuntaje"));
        ced=request.getParameter("cedula");
        coda=Integer.parseInt(request.getParameter("coda"));
        Part foto=request.getPart("IMG");
        Part foto2=request.getPart("Cpf");
        Part foto3=request.getPart("recibo");
             
        String nomfoto=foto.getSubmittedFileName();
        String nombre=ced+"_"+nomfoto;
        String Url="C:\\Users\\SENA\\Documents\\NetBeansProjects\\PettAppJ\\web\\Uploads\\Certificados"+nombre;
        String Url2="Uploads/Certificados/"+nombre;
          
          InputStream file=foto.getInputStream();
          File f=new File(Url);
          FileOutputStream sal=new FileOutputStream(f);
          int num=file.read();
          while(num!= -1){
              sal.write(num);
              num=file.read();
          }
          String nomfoto2=foto2.getSubmittedFileName();
          String nombre2=ced+"_"+nomfoto2;
          String Url3="C:\\Users\\SENA\\Documents\\NetBeansProjects\\PettAppJ\\web\\Uploads\\FCedulas"+nombre2;
          String Url4="Uploads/FCedulas/"+nombre2;
          InputStream file2=foto2.getInputStream();
          File f2=new File(Url3);
          FileOutputStream sal2=new FileOutputStream(f2);
          int num2=file2.read();
          while(num2!=-1){
              sal2.write(num2);
              num2=file2.read();
          }
          String nomfoto3=foto3.getSubmittedFileName();
          String nombre3=ced+"_"+nomfoto3;
          String Url5="C:\\Users\\SENA\\Documents\\NetBeansProjects\\PettAppJ\\web\\Uploads\\Recibos"+nombre3;
          String Url6="Uploads/Recibos/"+nombre3;
          InputStream file3=foto3.getInputStream();
          File f3=new File(Url5);
          FileOutputStream sal3=new FileOutputStream(f3);
          int num3=file3.read();
          while(num3!=-1){
              sal3.write(num3);
              num3=file3.read();
          }
        GSPostulacionAdmin con=new GSPostulacionAdmin(tel,dir,fij,Url2,Url4,est,resi,ubi,tvi,rpun,Url6,ced,coda);
        Postulacion in=new Postulacion();
        in.Ingresar_postulacion(con);
        response.sendRedirect("Ciudadano/Animal/Consultar_Animal.jsp");

 }
}
