<%-- 
    Document   : IngresarCiudadano_Adm
    Created on : 23/11/2018, 08:32:26 AM
    Author     : KnokinGm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
           <title>Registrar Datos del Ciudadano</title>
</head>
   <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../../../PettApp/Administrador/Ciudadano/CSS/Estilo1.css">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<body id="fondox">


      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="../Ciudadano/CSS/Estilo1.css">
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

</body>
    <form action="Consultar_Ciudadano.jsp">
    <input type="submit" name="volver" value="Volver" class="btn btn-outline-light" id="vol">
    </form>
<div id="padre">
	<div id="insertar" class="form-group">
	<h1>Insertar Ciudadano</h1>
 <form action="../../ServletCiudadano">
 	<label>Cedula </label><input type="text" name="cedula" required="" class="form-control">
    <label>Nombre</label><input type="text" name="nombre" required="" class="form-control">
    <label>Telefono</label><input type="number" name="telefono" required="" class="form-control">
    <label>Direccion</label><input type="text" name="direccion" required="" class="form-control">
    <label>Correo Electronico</label><input type="mail" name="correo" required="" class="form-control">
    <label>Nombre De Usuario</label><input type="text" name="usuario" required="" class="form-control">
      <div class="form-group" id="bot">
      <input type="submit" name="inciudat" value="Insertar Datos" class="btn btn-primary">
      </div>
    </form>
</div>
</div>

</body>
</html>
