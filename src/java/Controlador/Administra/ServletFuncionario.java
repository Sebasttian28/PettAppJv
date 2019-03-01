/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador.Administra;

import Modelo.Administrador.Funcionario.Funcionario;
import Modelo.Administrador.Funcionario.GSFuncionario;
import Modelo.Usuario.GSUsuario;
import Modelo.Usuario.Usuario;
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
 * @author SENA
 */
@WebServlet(name = "ServletFuncionario", urlPatterns = {"/ServletFuncionario"})
@MultipartConfig
public class ServletFuncionario extends HttpServlet {

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
            
            if(request.getParameter("botonfunci")!=null){
            this.IngresarFuncionario(request, response);
            }
            
            if(request.getParameter("BTN")!=null){
            this.ModificarFuncionario(request, response);
            }
    }
        
    protected void IngresarFuncionario(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    response.setContentType("text/html;charset=UTF-8");
    PrintWriter out = response.getWriter();

        String ced,tel,nom,cor,dep,car;
        ced=request.getParameter("cedula");
        tel=request.getParameter("telefono");
        nom=request.getParameter("nombre");
        cor=request.getParameter("correo");
        dep=request.getParameter("dependencia");
        car="Funcionario";
         Part foto=request.getPart("foto");
          String nomfoto=foto.getSubmittedFileName();
          String nombre=ced+nom;
          
          String Url="C:\\Users\\crist_000\\Documents\\NetBeansProjects\\PettAppJ\\web\\Uploads\\FotosUsuarios/"+nombre;
          
          String Url2=nombre;
          
          InputStream file=foto.getInputStream();
          File f=new File(Url);
          FileOutputStream sal=new FileOutputStream(f);
          int num=file.read();
          while(num!= -1){
              sal.write(num);
              num=file.read();
          }


        
        int rol = 2;
        String cla = "funcionario";
        GSUsuario con2=new GSUsuario(ced,cla,rol,Url2);
        Usuario in2=new Usuario();
        in2.Ingresar_ciud(con2);
        GSFuncionario con=new GSFuncionario(ced,tel,nom,cor,car,dep);
        Funcionario in=new Funcionario();
        in.Insertar(con);
        response.sendRedirect("Administrador/Funcionario/Ingresar_Funcionarios.jsp");
        
    }
    
    protected void ModificarFuncionario(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    response.setContentType("text/html;charset=UTF-8");
    PrintWriter out = response.getWriter();

        int x;
        String ced,tel,nom,cor,dep;
        ced=request.getParameter("ced");
        tel=request.getParameter("tel");
        nom=request.getParameter("nom");
        cor=request.getParameter("cor");
        dep=request.getParameter("dep");
        
        GSFuncionario con=new GSFuncionario(ced,tel,nom,cor,dep);
        Funcionario in=new Funcionario();
        x=in.Actualizar(con);
        
        if (x>0) {
            JOptionPane.showMessageDialog(null, "Datos Actualizados");
        }
        
        else{
            JOptionPane.showMessageDialog(null, "Datos no Actualizados");
        }
        response.sendRedirect("Administrador/Funcionario/Consultar_Funcionarios.jsp");
        
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
