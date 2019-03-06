<%-- 
    Document   : Consultar_Eventp
    Created on : 23/11/2018, 09:10:58 AM
    Author     : KnokinGm
--%>

<%@page import="Modelo.Usuario.Usuario"%>
<%@page import="Modelo.Usuario.GSUsuario"%>
<%@page import="Modelo.Administrador.Evento.Evento"%>
<%@page import="Modelo.Administrador.Evento.GSEventoAdmin"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
      <title>Evento</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="CSS/EstiloIngresoEvento.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" ></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  	<script src="JQ/jquery-3.3.1.min.js"></script>
        <script src="JQ/main.js"></script>
        
</head>

    <body>
	
        <%
        HttpSession ht = request.getSession();
        String dat2=(String)ht.getAttribute("nom1");
        %>
        <%
                ArrayList<GSUsuario> datc1 = new ArrayList<>();
                Usuario co1 = new Usuario();
                datc1=co1.Consultar1(dat2);
                GSUsuario cgsc= new GSUsuario();
                for (int i = 0; i < datc1.size() ; i++) {
                        cgsc=datc1.get(i);
                %>
                
            
        <div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<nav class="navbar navbar-expand-lg navbar-light bg-light navbar-dark bg-dark fixed-top">
				 
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="navbar-toggler-icon"></span>
                    </button> <a class="navbar-brand" href="../Login/login.jsp">PetApp</a>
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="navbar-nav ml-md-auto">
                            <a class="navbar-brand" href="">Usuario: <%=dat2%></a>
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
        
       <form action="../Menu/Administrador.jsp">
            <input type="submit" name="volver" value="Volver" class="btn btn-outline-dark" id="vol">
  	</form>
                         
    <h3 class="display-4" style="margin-top: 70px;">Eventos</h3>
    	        <%
                ArrayList<GSEventoAdmin> dat = new ArrayList<>();
                Evento co = new Evento();
                dat=co.Consultar();
                GSEventoAdmin cgsc1= new GSEventoAdmin();
                for (int i = 0; i < dat.size() ; i++) {
                        cgsc1=dat.get(i);
                %>
            <div id="centro">
                <div class="caja1">
                    <table class="table">
                    <tr>
                    <thead class='thead-dark'>
                    <th><%=cgsc1.getLug()%></th>
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
                        <th>Lugar</th>            
                        <th><%=cgsc1.getLug()%></th>
                        </tr>
                        <tr>
                        <th>Duracion</th>
                        <th><%=cgsc1.getDura()%></th>
                        </tr>
                        <tr>
                        <th>Descripcion</th>
                        <th><%=cgsc1.getDesc()%></th>
                        </tr>    
                    
               
                
                
                </table>
            </div>
            </div>
            <%}%>
    </body>
</html>
