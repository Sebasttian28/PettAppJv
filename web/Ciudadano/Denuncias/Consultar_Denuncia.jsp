<%-- 
    Document   : Consultar_Denuncia
    Created on : 23/11/2018, 08:35:33 AM
    Author     : KnokinGm
--%>

<%@page import="Modelo.Administrador.Ciudadano.Ciudadano"%>
<%@page import="Modelo.Administrador.Ciudadano.GSCiudadanoAdmin"%>
<%@page import="Modelo.Usuario.GSUsuario"%>
<%@page import="Modelo.Usuario.Usuario"%>
<%@page import="Modelo.Administrador.Denuncia.Denuncia"%>
<%@page import="Modelo.Administrador.Denuncia.GSDenunciaAdmin"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <title>Denuncia</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="CSS/EstiloIngresoDenuncia.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  	<script src="JQ/jquery-3.3.1.min.js"></script>
        <script src="JQ/main1.js"></script>
        
</head>
    <body>
        
        <%
        HttpSession ht = request.getSession();
        String dat1=(String)ht.getAttribute("nom");
        %>
        <%
                ArrayList<GSUsuario> dat = new ArrayList<>();
                Usuario co = new Usuario();
                dat=co.Consultar1(dat1);
                GSUsuario cgsc= new GSUsuario();
                for (int i = 0; i < dat.size() ; i++) {
                        cgsc=dat.get(i);
                %>
                    
                
            
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <nav class="navbar navbar-expand-lg navbar-light bg-light navbar-dark bg-dark fixed-top">
               
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="navbar-toggler-icon"></span>
                    </button> <a class="navbar-brand" href="">PetApp</a>
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="navbar-nav ml-md-auto">
                            <a class="navbar-brand" href="">Usuario: <%=dat1%></a>
                                <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="" id="navbarDropdownMenuLink" data-toggle="dropdown">
                                    <img src="../../Uploads/FotosUsuarios/<%=cgsc.getFot()%>" class="fotomod" 
                                      style="width:50px;height:50px;border-radius:200px 200px;"></a>     
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                        <form action="../Ciudadano/Consultar_Ciudadano.jsp" method="Post">
                            <input type='hidden' name='usu4' value='<%=cgsc.getNom()%>'>
                            <input type="submit" class="dropdown-item" name="per" value="Perfil"></a>
                        </form>
                        <form action="../Respuesta/Mostrar_Respuestas.jsp" method="Post">
                            <input type='hidden' name='usu3' value='<%=cgsc.getNom()%>'>
                            <input type="submit" class="dropdown-item" name="res" value="Respuesta"></a>
                        </form>
                        <form action="../Menu/MenuCiudadano.jsp" method="Post">
                            <input type='hidden' name='usu2' value='<%=cgsc.getNom()%>'>
                            <input type="submit" class="dropdown-item" name="men" value="Menu"></a>
                        </form>
                        <%}%>    
                        <%
                        if (request.getParameter("per")!=null){
                        HttpSession htt=request.getSession();
                        String naom=request.getParameter("usu4");
                        String dato= new String(naom);
                        htt.setAttribute("nom1", dato);
                        response.sendRedirect("../Ciudadano/Consultar_Ciudadano.jsp");
                        }
                        else if (request.getParameter("res")!=null){
                        HttpSession htt=request.getSession();
                        String naom=request.getParameter("usu3");
                        String dato= new String(naom);
                        htt.setAttribute("nom1", dato);
                        response.sendRedirect("../Respuesta/Mostrar_Respuestas.jsp");
                        }
                        else if (request.getParameter("men")!=null){
                        HttpSession htt=request.getSession();
                        String naom=request.getParameter("usu2");
                        String dato= new String(naom);
                        htt.setAttribute("nom1", dato);
                        response.sendRedirect("../Menu/MenuCiudadano.jsp");
                        }
                        %>
                            <div class="dropdown-divider">
                        </div> <a class="dropdown-item" href="../../Login/inicio.jsp">Cerrar Sesion</a>
                    </div>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
        <div id="top">
	<div id="ubi">
       
    
        
    
        <form action="Ingresar_Denuncia.jsp">
 	<input type="submit" name="insertar" value="Realizar denuncia" class="btn btn-info" id="nuevo">
	</form>
    <h3 class="display-4">Denuncia</h3>
    
    <%
                ArrayList<GSCiudadanoAdmin> datC = new ArrayList<>();
                Ciudadano coC = new Ciudadano();
                datC=coC.Consultar1(dat1);
                GSCiudadanoAdmin cgscC= new GSCiudadanoAdmin();
                 
                for (int i2 = 0; i2 < datC.size() ; i2++) {
                        cgscC=datC.get(i2);
                %>
    
    
    	        <%
                ArrayList<GSDenunciaAdmin> dat12 = new ArrayList<>();
                Denuncia co1 = new Denuncia();
                dat12=co1.ConsultarD(cgscC.getCed());
                GSDenunciaAdmin cgsc1= new GSDenunciaAdmin();
                for (int i = 0; i < dat12.size() ; i++) {
                        cgsc1=dat12.get(i);
                %>
                <div id="centro">
                <div class="caja1">
                    <table class="table">
                    <tr>
                    <thead class='thead-dark'>
                    <th><%=cgsc1.getFec()%>-Cedula: <%=cgsc1.getCed()%></th>
                    </thead>
                    </tr>
                    </table>
                </div>
                
                <div class="caja2">
                    <table class="table">
                        <tr>
                        <th>Codigo</th>
                        <th><%=cgsc1.getCod()%></th>
                        </tr>
                        <tr>
                        <th>Fecha</th>
                        <th><%=cgsc1.getFec()%></th>
                        </tr>
                        <tr>
                        <th>Descripcion</th>            
                        <th><%=cgsc1.getDes()%></th>
                        </tr>
                        <tr>
                        <th>Cedula</th>
                        <th><%=cgsc1.getCed()%></th>
                        </tr>
                        <tr>
                        <th>Mensaje</th>
                        <th><%=cgsc1.getMen()%></th>
                        </tr>
                        <tr>
                        <th>Foto</th>
                        <th><img src="../<%=cgsc1.getFot()%>" width="100" height="100"></th>
                        </tr>
                        
               <form method='POST' action='../ResDenuncia/Respositiva.jsp'>
               <input type='hidden' name='cedula' value='<%=cgsc1.getCed()%>'>
                    <th><input type='submit' name='acep' value='Aceptar' class='btn btn-info' ></th>
                </form>
            
                <form method='POST' action=''>
              
                    <th><input type='submit' name='eliminar' value='Rechazar' class='btn btn-danger'></th>
                </form>
                
                
                </table>
            </div>
            </div>
            <%}}%>
            
            </div>
            </div>
        
        </body>
</html>

