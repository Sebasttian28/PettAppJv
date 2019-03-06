/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador.Administra;

import Modelo.Administrador.Ciudadano.Ciudadano;
import Modelo.Administrador.Ciudadano.GSCiudadanoAdmin;
import Modelo.Preguntas.GSRespuestaFin;
import Modelo.Preguntas.GSRespuestas;
import Modelo.Preguntas.InsertarRespuesta;
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
 * @author Edwin Abril
 */
@WebServlet(name = "ServletInsertarPreguntas", urlPatterns = {"/ServletInsertarPreguntas"})
public class ServletInsertarPreguntas extends HttpServlet {

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
        
        if (request.getParameter("fin")!=null) {
            this.Ingresar(request, response);
        }
    }
    
    protected void Ingresar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
            
            HttpSession ht = request.getSession();
            String datd=(String)ht.getAttribute("nom1");
            Integer ani=(Integer)ht.getAttribute("ani1");
            
            ArrayList<GSCiudadanoAdmin> dares = new ArrayList<>();
            Ciudadano cores = new Ciudadano();
            dares=cores.Consultar1(datd);
            GSCiudadanoAdmin cgscres= new GSCiudadanoAdmin();

            for (int ire = 0; ire < dares.size() ; ire++) {
            cgscres=dares.get(ire);
        
            int r1=Integer.parseInt(request.getParameter("res1"));
            int r2=Integer.parseInt(request.getParameter("res2"));
            int r3=Integer.parseInt(request.getParameter("res3"));
            int r4=Integer.parseInt(request.getParameter("res4"));
            int r5=Integer.parseInt(request.getParameter("res5"));
            int r6=Integer.parseInt(request.getParameter("res6"));
            int r7=Integer.parseInt(request.getParameter("res7"));
            int r8=Integer.parseInt(request.getParameter("res8"));
            int r9=Integer.parseInt(request.getParameter("res9"));
            int r10=Integer.parseInt(request.getParameter("res10"));
            int r11=Integer.parseInt(request.getParameter("res11"));
            int r12=Integer.parseInt(request.getParameter("res12"));
            int r13=Integer.parseInt(request.getParameter("res13"));
            int r14=Integer.parseInt(request.getParameter("res14"));
            int r15=Integer.parseInt(request.getParameter("res15"));
            int r16=Integer.parseInt(request.getParameter("res16"));
            int r17=Integer.parseInt(request.getParameter("res17"));
            int r18=Integer.parseInt(request.getParameter("res18"));
            int r19=Integer.parseInt(request.getParameter("res19"));
            int r20=Integer.parseInt(request.getParameter("res20"));
            int rt=r1+r2+r3+r4+r5+r6+r7+r8+r9+r10+r11+r12+r13+r14+r15+r16+r17+r18+r19+r20;
   
            
            GSRespuestas con=new GSRespuestas(r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,cgscres.getCed());
            InsertarRespuesta in=new InsertarRespuesta();
            GSRespuestaFin con1=new GSRespuestaFin(cgscres.getCed(),rt);
            InsertarRespuesta in1=new InsertarRespuesta();
            in1.RespuestaFin(con1);
            in.Respuestas(con);
            

            HttpSession htt=request.getSession();
            Integer re= new Integer(rt);
            Integer an= new Integer(ani);
            String ce= new String(cgscres.getCed());
            htt.setAttribute("ced1", ce);
            htt.setAttribute("ani1", an);
            htt.setAttribute("res1", re);
            }
            response.sendRedirect("Ciudadano/Postulacion/IngresarPostulacion.jsp");
            
            
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
