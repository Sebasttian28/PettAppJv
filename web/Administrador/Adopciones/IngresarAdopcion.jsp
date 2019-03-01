<%-- 
    Document   : IngresarAdopcion
    Created on : 23/11/2018, 08:24:26 AM
    Author     : KnokinGm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
      <title>Pet App</title>
</head>
   <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../../Administrador/Adopciones/CSS/Estilo.css">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<body id="fondox">


    <form action="Consultar_Adopcion.jsp" >
    <input type="submit" name="volver" value="Volver" class="btn btn-outline-light" id="vol">
    </form>
<div id="padre">
	<div id="insertar" class="form-group">
	<h1>Registrar Adopcion</h1>
 <form action="../../ServletAdopcion"  method="Post">
 	<label>Codigo del Animal</label><input type="number" name="animal" required="" class="form-control">
    <label>Codigo del Seguimiento</label><input type="number" name="segui" required="" class="form-control">
    <label>Mensaje</label><input type="text" name="mensaje" required="" class="form-control">
   
      <div class="form-group" id="bot">
      <input type="submit" name="ingadop" value="Finalizar Adopcion" class="btn btn-primary">
      </div>
    </form>
</div>
</div>

</body>>
</html>
