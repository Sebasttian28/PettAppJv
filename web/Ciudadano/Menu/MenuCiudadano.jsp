<%@page import="Modelo.Usuario.Usuario"%>
<%@page import="Modelo.Usuario.GSUsuario"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,  user-scalabe=no, initial-scale=1.0, minimum-scale=1.0">
        <link rel="stylesheet" href="CSS/EstilosMenu.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" ></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  	<title>Pet App</title>
</head>
<body style="font-family:Rockwell;color: white;background: url('Imagen/FondoCiudadano.jpeg');background-attachment: fixed;">
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
<header id="encabezado">

    <h1>Ciudadano</h1>
    <img src="../../Uploads/FotosUsuarios/<%=cgsc.getFot()%>" class='fotomod' style='width:250px;height:250px;border-radius:200px 200px;'>
    <h2><%=dat2%></h2>
    </header>




    <div id="pricing" class="container-fluid">
    <div class="text-center">

    <h1>GESTIONAR</h1>
     
        <div class="row" id="icono">
          <div class="col">
              <form action="../Evento/Consultar_Evento.jsp">
                <input type="image" name="eventoss" src="Logo/evento.png" height="250" width="250" id="eventos"> 
              </form>
          </div>

          <div class="col">
              <form action="../Animal/Consultar_Animal.jsp">
                <input type="image" name="animal" src="Logo/Adoptar.png" height="250" width="250" id="animales">
              </form>
          </div>

          <div class="col">
                <form action="../Denuncias/Consultar_Denuncia.jsp">
                  <input type="image" name="denuncia" src="Logo/Denuncia.png" height="250" width="250" id="denuncia">
                </form>
          </div>
        </div>
        
    
    
    
        <div class="row" id="icono2">
          <div class="col">
                <form action="../Mascota/Mostrar_Mascota.jsp">
                  <input type="image" name="mascotas" src="Logo/Mascota.png" height="250" width="250" id="mascota">
                </form>
          </div>

          <div class="col">
                <form action="../Ciudadano/Consultar_Ciudadano.jsp">
                  <input type="image" name="datos" src="Logo/MisDatos.png" height="250" width="250" id="datos">
                </form>
          </div>
        </div> 

  </div>
</div>

    </body>
</html>