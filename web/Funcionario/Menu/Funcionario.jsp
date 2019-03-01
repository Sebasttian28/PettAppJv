<%-- 
    Document   : Funcionario
    Created on : 2/11/2018, 08:44:51 AM
    Author     : SENA
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
	<header id="encabezado">
    <form action="../../../Login/Vista/registro.php">
    <input type="submit" name="cerrar" value="Cerrar Sesion" class="btn btn-light" id="sal">
    </form>

		<h1>Funcionario</h1>
		<img src="Imagenes/Funcionario1.png" id="Avatar2" >
	</header>

  

  <center>
	<div id="pricing" class="container-fluid">
  <div class="text-center">

    <br><h2>GESTIONAR</h2><br><br>
    <br>
  </div>
   

  

  <form action="../Adopciones/Consultar_Adopcion.jsp">
<div class="col-sm-4 col-xs-12">
      <div class="panel panel-default text-center" id="divciudadano">
        <div class="panel-heading" id="verde">
          <h1>Adopciones</h1>
        </div>
        <div class="panel-body"><center>
          <input type="image" name="Eventos" src="Imagenes/Adopcion.png" class="img-responsive slideanim" id="logoimagen"></center>
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
          <input type="image" name="Animales" src="Imagenes/Animales.png" class="img-responsive slideanim" id="logoimagen"></center>
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
          <input type="image" name="Eventos" src="Imagenes/Ciudadano.png" class="img-responsive slideanim" id="logoimagen"></center>
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
          <input type="image" name="Denuncias" src="Imagenes/Denuncias.png" class="img-responsive slideanim" id="logoimagen"></center>
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
          <input type="image" name="Eventos" src="Imagenes/Eventos.png" class="img-responsive slideanim" id="logoimagen"></center>
        </div>
      </div>      
    </div> 
  </form>

    <form action="../Funcionario/Consultar_Funcionarios.jsp">
    <div class="col-sm-4 col-xs-12">
      <div class="panel panel-default text-center" id="divciudadano">
        <div class="panel-heading" id="verde">
          <h1>Perfil</h1>
        </div>
        <div class="panel-body"><center>
          <input type="image" name="Adopcion" src="Imagenes/Funcionario.png" class="img-responsive slideanim" id="logoimagen"></center>
        </div>
      </div>      
    </div>
  </form>
            
<form action="../Postulacion/Consultar_Postulacion.jsp">
<div class="col-sm-4 col-xs-12">
      <div class="panel panel-default text-center" id="divciudadano">
        <div class="panel-heading" id="verde">
          <h1>Postulacion</h1>
        </div>
        <div class="panel-body"><center>
          <input type="image" name="Eventos" src="Imagenes/Postulacion.png" class="img-responsive slideanim" id="logoimagen"></center>
        </div>
      </div>      
    </div>
    </form>  

<form action="../Seguimiento/Continuar_Postulacion.jsp">
<div class="col-sm-4 col-xs-12">
      <div class="panel panel-default text-center" id="divciudadano"> 
        <div class="panel-heading" id="verde">
          <h1>Seguimiento</h1>
        </div>
        <div class="panel-body"><center>
          <input type="image" name="Eventos" src="Imagenes/Seguimiento.png" class="img-responsive slideanim" id="logoimagen"></center>
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
          <input type="image" name="Veterinaria" src="Imagenes/Veterinaria.png"  class="img-responsive slideanim" id="logoimagen"></center>
        </div>
      </div>      
    </div> 
  </form>
  </center>
  
</div>

</body>
</html>