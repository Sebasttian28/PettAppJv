<%-- 
    Document   : Adminitrador
    Created on : 26/10/2018, 11:04:50 AM
    Author     : Knokin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
  	<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="Estilo.css">
	<title>PetApp</title>
</head>
<body>
        <%
        HttpSession ht = request.getSession();
        String dat2=(String)ht.getAttribute("nomA");
        %>
    <header id="encabezado">
    <form action="../../Login/inicio.jsp">
    <input type="submit" name="cerrar" value="Cerrar Sesion" class="btn btn-light" id="sal">
    </form>

    <h1>Administrador</h1>
	<img src="Imagenes1/Admin3.png" id="Avatar" >
    </header>

  

  <center>
	<div id="pricing" class="container-fluid">
  <div class="text-center">

    <br><h2>GESTIONAR</h2><br><br>
    <br>
  </div>
   

  <form action="../Admin/Consultar_Admin.jsp">
<div class="col-sm-4 col-xs-12">
      <div class="panel panel-default text-center" id="divciudadano">
        <div class="panel-heading" id="verde">
          <h1>Administrador</h1>
        </div>
        <div class="panel-body"><center>
          <input type="image" name="Eventos" src="Imagenes1/Admin.png" class="img-responsive slideanim" id="logoimagen"></center>
        </div>
      </div>      
    </div> 
  </form>

  <form action="../Adopciones/Consultar_Adopcion.jsp">
<div class="col-sm-4 col-xs-12">
      <div class="panel panel-default text-center" id="divciudadano">
        <div class="panel-heading" id="verde">
          <h1>Adopciones</h1>
        </div>
        <div class="panel-body"><center>
          <input type="image" name="Eventos" src="Imagenes1/Adopcion.png" class="img-responsive slideanim" id="logoimagen"></center>
        </div>
      </div>      
    </div> 
  </form>
    
    <form action="../Animal/Consultar_Animal.jsp">
    <div class="col-sm-4 col-xs-12">
      <div class="panel panel-default text-center" id="divciudadano">
        <div class="panel-heading" id="verde">
          <h1>Animales</h1>
        </div>
        <div class="panel-body"><center>
          <input type="image" name="Animales" src="Imagenes1/Animales.png" class="img-responsive slideanim" id="logoimagen"></center>
        </div>
      </div>      
    </div>
  </form>

<form action="../Ciudadano/Consultar_Ciudadano.jsp">
<div class="col-sm-4 col-xs-12">
      <div class="panel panel-default text-center" id="divciudadano">
        <div class="panel-heading" id="verde">
          <h1>Ciudadano</h1>
        </div>
        <div class="panel-body"><center>
          <input type="image" name="Eventos" src="Imagenes1/Ciudadano.png" class="img-responsive slideanim" id="logoimagen"></center>
        </div>
      </div>      
    </div> 
  </form>



<form action="../Denuncia/Consultar_Denuncia.jsp">
<div class="col-sm-4 col-xs-12">
      <div class="panel panel-default text-center" id="divciudadano">
        <div class="panel-heading" id="verde">
          <h1>Denuncias</h1>
        </div>
        <div class="panel-body"><center>
          <input type="image" name="Denuncias" src="Imagenes1/Denuncias.png" class="img-responsive slideanim" id="logoimagen"></center>
        </div>
      </div>      
    </div>
  </form>

<form action="../Evento/Consultar_Evento.jsp">
<div class="col-sm-4 col-xs-12">
      <div class="panel panel-default text-center" id="divciudadano">
        <div class="panel-heading" id="verde">
          <h1>Eventos</h1>
        </div>
        <div class="panel-body"><center>
          <input type="image" name="Eventos" src="Imagenes1/Eventos.png" class="img-responsive slideanim" id="logoimagen"></center>
        </div>
      </div>      
    </div> 
  </form>


    <form action="../Funcionario/Consultar_Funcionarios.jsp">
    <div class="col-sm-4 col-xs-12">
      <div class="panel panel-default text-center" id="divciudadano">
        <div class="panel-heading" id="verde">
          <h1>Funcionario</h1>
        </div>
        <div class="panel-body"><center>
          <input type="image" name="Adopcion" src="Imagenes1/Funcionario.png" class="img-responsive slideanim" id="logoimagen"></center>
        </div>
      </div>      
    </div>
  </form>

<form action="../Veterinaria/Consultar_Veterinaria.jsp">
<div class="col-sm-4 col-xs-12">
      <div class="panel panel-default text-center" id="divciudadano">
        <div class="panel-heading" id="verde">
          <h1>Veterinaria</h1>
        </div>
        <div class="panel-body"><center>
          <input type="image" name="Veterinarias" src="Imagenes1/Veterinaria.png" class="img-responsive slideanim" id="logoimagen"></center>
        </div>
      </div>      
    </div>
  </form>



<form action="../Usuarios/usuarios.jsp">
<div class="col-sm-4 col-xs-12">
      <div class="panel panel-default text-center" id="divciudadano">
        <div class="panel-heading" id="verde">
          <h1>Usuarios</h1>
        </div>
        <div class="panel-body"><center>
          <input type="image" name="Veterinaria" src="Imagenes1/Usuario.png"  class="img-responsive slideanim" id="logoimagen"></center>
        </div>
      </div>      
    </div>
  </form>


  </center>
  
</div>

</body>
</html>

