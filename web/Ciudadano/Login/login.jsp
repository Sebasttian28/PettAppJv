<%@page import="javax.swing.JOptionPane"%>
<%@page import="Modelo.Usuario.Usuario"%>
<%@page import="Modelo.Usuario.GSUsuario"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,  user-scalabe=no, initial-scale=1.0, minimum-scale=1.0">
	<link rel="stylesheet" href="css/estilos.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/Footer-white.css">
        <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" ></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
  	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script src="main.js"></script>
  	<script src="js/jquery-3.3.1.min.js" ></script>
  	<script src="js/main.js" ></script>


	<title>Pet App</title>
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
                        </div> <a class="dropdown-item" href="../../../Cerrar.php">Cerrar Sesion</a>
                    </div>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
                    
<header>	
		<div class="logotipo">
		<h1>Pet App </h1>
		</div>
		<div class="navegacion">
			<div class="boton-menu">
	<a href="#" ><span class="icon-menu3"></span> </a>
		</div>
		<nav >
			<ul class="menu">
		<li><a href="#">Incio</a></li>
		<li><a href="#">Adopta</a></li>
		<li><a href="Galeria.php">Galeria</a></li>
		<li><a href="#">Contacto</a></li>
</ul>
	</nav>
</div>

</header>

	<div class="slider">
		<ul>
			<s><img src="img/banner.jpeg" alt="" ></s>
			<s><img src="img/banner2.jpg" alt=""></s>
			<s><img src="img/banner3.jpg" alt=""></s>
			<s><img src="img/banner4.jpeg" alt=""></s>
		</ul>
	</div>

	<br>
	<br>

  <div class="row" id="modulos">

  <div class="col-sm" id="caja1" >
    <div class="panel panel-default text-center">
        <div class="panel-heading" id="panel">
        	<img src="Imagenes/info.png" height="30" width="30" id="info" > 
          <h1 id="Adopcion">Adopción</h1>
            <h5>Cómo Adopto?</h5>
            </div>
            <div id="caja2">
            	<br>
            	<p>En este módulo usted podrá dar hogar a un animal que lo necesita, La alcaldía municipal de Mosquera Cundinamarca, le ofrece la posibilidad de escoger el animal que usted quiera adoptar, y así contribuir de manera responsable a la salud ambiental y el desarrollo del municipio </p><br><br>
            	<a href="Informacion/Adoptar.php">saber más</a>

            </div>
          <div class="panel-body" id="imagen">
          <!--  AQUI VA LA IMAGEN DEL EVENTO -->
        <img src="Imagenes/adopcion.jpeg" class="img-responsive slideanim" id="imagenadopcion">
     </div>
    </div>      
  </div>  
      
    <div class="col-sm" id="caja3">
      <div class="panel panel-default text-center">
          <div class="panel-heading" id="panel">
          	<img src="Imagenes/info.png" height="30" width="30" id="info2" >
          <h1 id="Veterinaria">Veterinarias</h1>
           <h5>Veterinarias Vinculadas</h5>
        </div>
        <div id="caja4">
        	<br>
            	<p>En este módulo usted podrá ubicar las diferentes veterinarias del municipio que contribuyen al cuidado animal y a las cuales usted podrá acudir en caso de que su mascota requiera atención</p><br><br>
            	<a href="Informacion/Eventos.php">saber más</a>
        </div>
        <div class="panel-body" id="imagen2">
          <img src="Imagenes/veterinaria.jpeg" class="img-responsive slideanim" id="imagenveterinaria">
        </div>
      </div>      
    </div>     

    <div class="col-sm" id="caja5">
      <div class="panel panel-default text-center">
          <div class="panel-heading" id="panel">
          	<img src="Imagenes/info.png" height="30" width="30" id="info3" >
          <h1 id="Eventos">Eventos</h1>
           <h5>Infórmate</h5>
        </div>
        <div id="caja6">
           <br>
            	<p>En este módulo usted podrá informarse acerca de las jornadas de cuidado animal que realiza el municipio, aquí podrá observar una descripción detallada además de la fecha, la hora y el lugar en el que se realizara</p><br><br>
            	<a href="Informacion/Veterinaria.php">saber más</a>
        </div>
        <div class="panel-body" id="imagen3">
          <img src="Imagenes/Jornadas.jpeg" class="img-responsive slideanim" id="imageneventos">
        </div>
      </div>      
    </div>    
  </div>


    <footer id="myFooter">
        <div class="container">
            <ul>
                <li><a href="#">Alcaldia de Mosquera</a></li>
                <li><a href="#">Contactenos</a></li>
                <li><a href="#">Reviews</a></li>
                <li><a href="#">Terms of service</a></li>
            </ul>
        <p class="footer-copyright">© 2018 Copyright</p>
        </div>
        <div class="footer-social">
            <a href="#" class="social-icons"><i class="fa fa-facebook"></i></a>
            <a href="#" class="social-icons"><i class="fa fa-google-plus"></i></a>
            <a href="#" class="social-icons"><i class="fa fa-twitter"></i></a>
        </div>
</footer>

<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js">
</script>

</body>
</html>
