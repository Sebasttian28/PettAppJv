<%-- 
    Document   : IngresarEvento_Adm
    Created on : 23/11/2018, 08:37:20 AM
    Author     : KnokinGm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
             <title>Registrar Un Evento</title>
</head>
   <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../../../PettApp/Administrador/Evento/CSS/Estilo.css">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="CSS/Estilo.css">
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<body id="fondox">
  

    <form action="Consultar_Evento.jsp">
    <input type="submit" name="volver" value="Volver" class="btn btn-outline-light" id="vol">
    </form>
<div id="padre">
	<div id="insertar" class="form-group">
	<h1>Insertar Evento</h1>
 <form action="../../ServletEvento" enctype="multipart/form-data" method="Post">
 	<label>Fecha </label><input type="date" name="fecha" required="" class="form-control">
    <label>Lugar</label><input type="text" name="lugar" required="" class="form-control">
    <label>Hora</label><input type="time" name="hora" required="" class="form-control">
    <label>Descripcion</label><input type="text" name="desc" required="" class="form-control">
    <p>Foto</br><input type="file" name="foto" size="30"></p>
      <div class="form-group" id="bot">
      <input type="submit" name="indevent" value="Insertar Evento " class="btn btn-primary">
      </div>
    </form>
</div>
</div>
</body>
</html>

