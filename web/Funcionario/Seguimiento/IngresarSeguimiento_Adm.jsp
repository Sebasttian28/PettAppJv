<%-- 
    Document   : IngresarSeguimiento_Adm
    Created on : 23/11/2018, 08:54:21 AM
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
    <link rel="stylesheet" href="../Ciudadano/CSS/Estilo1.css">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<body id="fondox">

    <form action="Continuar_Postulacion.jsp">
    <input type="submit" name="volver" value="Volver" class="btn btn-outline-light" id="vol">
    </form>
<div id="padre">
	<div id="insertar" class="form-group">
	<h1>Realizar Seguimiento</h1>
 <form action="../../ServletSeguimiento">
 	<label>Codigo Postulacion</label><input type="number" name="codigo" required="" class="form-control">
      <div class="form-group" id="bot">
      <input type="submit" name="ingseg" value="Insertar Seguimiento" class="btn btn-primary">
      </div>
    </form>
</div>
</div>
</html>
