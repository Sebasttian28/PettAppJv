<%@page import="Modelo.Administrador.Funcionario.Funcionario"%>
<%@page import="Modelo.Administrador.Funcionario.GSFuncionario"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="Modelo.Administrador.Ciudadano.Ciudadano"%>
<%@page import="Modelo.Administrador.Ciudadano.GSCiudadanoAdmin"%>
<%@page import="Modelo.Respuesta.Respuesta"%>
<%@page import="Modelo.Respuesta.GSRespuesta"%>
<%@page import="Modelo.Usuario.Usuario"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Usuario.GSUsuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,  user-scalabe=no, initial-scale=1.0, minimum-scale=1.0">
        <link rel="stylesheet" href="CSS/EstiloRespuesta1.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" ></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  	<script src="JQ/jquery-3.3.1.min.js"></script>
        <script src="JQ/main1.js"></script>
        <title>Pet App</title>
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
                    <input type='hidden' class='usu' value='<%=cgsc.getNom()%>' name="usu4">
                
            
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
                        </div> <a class="dropdown-item" href="../../../Cerrar.php">Cerrar Sesion</a>
                    </div>
						
						</li>
					</ul>
				</div>
			</nav>
		</div>
	</div>
</div>
        
                <%
                ArrayList<GSCiudadanoAdmin> dat = new ArrayList<>();
                Ciudadano co = new Ciudadano();
                dat=co.Consultar1(dat2);
                GSCiudadanoAdmin cgsc2= new GSCiudadanoAdmin();
                 
                for (int i2 = 0; i2 < dat.size() ; i2++) {
                        cgsc2=dat.get(i2);
                %>
                
                <%%>
        <form action="Menu/Ciudadano.jsp">
            <input type="submit" name="volver" value="Volver" class="btn btn-outline-dark" id="vol">
  	</form>
            <h3 class="display-4" style="margin-top: 50px;">Respuesta</h3>
    	        <%
                ArrayList<GSRespuesta> res = new ArrayList<>();
                Respuesta res1 = new Respuesta();
                res=res1.Consultar1(cgsc2.getCed());
                GSRespuesta res2= new GSRespuesta();
                for (int i3 = 0; i3 < res.size() ; i3++) {
                        res2=res.get(i3);
                %>
                           
     
            <div id="centro">
                <div class="caja1">
                    <table class="table">
                    <tr>
                    <thead class='thead-dark'>
                    <th><img src="../../Uploads/Respuestas/<%=res2.getFot()%>" width="50" height="50"></th>
                    </thead>
                    </tr>
                    </table>
                </div>
     
                <div class="caja2">
                    <table class="table">
                        <tr>
                        <th>Codigo</th>
                        <th><%=res2.getCod()%></th>
                        </tr>
                        <tr>
                        <tr>
                        <th>Mensaje</th>            
                        <th><%=res2.getMen()%></th>
                        </tr>
                        <tr>
                        <form method='POST' action=''>
                    <input type='hidden' name='cod' value=''>
                    <th><input type='submit' name='modificar' value='Modificar' class='btn btn-info' ></th>
                </form>
                <form action="">
                    <th><input type="submit" name="eliminar" value="Eliminar" class="btn btn-danger"></th>
                </form>  
                    </table>
                </div>
                
                        <div class="caja3">
                         <table class="table">
                         <tr>
                         <thead class='thead-light'>
                    <th colspan='2'> Encargado en  el Proceso</th>
                         </thead>
                    </tr>
                    </table>
                            
                     </div>
                <%
                    
                ArrayList<GSFuncionario> datc2 = new ArrayList<>();
                Funcionario co2 = new Funcionario();
                datc2=co2.Consultar_f(res2.getEnc());
                GSFuncionario res3= new GSFuncionario();
                for (int l = 0; l < datc2.size() ; l++) {
                        res3=datc2.get(l);
                %>   
                         
                      <div class="caja4">
                            <table class="table">
                                   <tr>
                                   <th>Nombre</th>
                            <th><%=res3.getNom()%></th>
                                </tr>
                                <tr>
                              <th>Documento</th>
                              <th><%=res3.getCed()%></th>
                        </tr>
                        <tr>
                            <th>Telefono</th>
                            <th><%=res3.getTel()%></th>
                        </tr>
                        <tr>
                            <th>Correo</th>
                            <th><%=res3.getCor()%></th>
                        </tr>
                        <tr>
                            <th>Cargo</th>
                            <th><%=res3.getCar()%></th>
                        </tr>
                        <tr>
                            <th>Dependencia</th>
                            <th><%=res3.getDep()%></th>
                        </tr>
                                 <%}%>
                   </table>
                      </div> 
               
                        

            </div>

                <%}}}%>           
        
        
    </body>
</html>
