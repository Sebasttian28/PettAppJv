<%-- 
    Document   : IngresarMascota_Adm
    Created on : 23/11/2018, 08:51:16 AM
    Author     : KnokinGm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
           <title>Registrar Mascota</title>
</head>
   <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../../../PettApp/Administrador/Mascota/CSS/Estilo.css">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <link rel="stylesheet" href="CSS/Estilo.css">
    
<body id="fondox">

    <form action="Consultar_Mascota.jsp" >
    <input type="submit" name="volver" value="Volver" class="btn btn-outline-light" id="vol">
    </form>
<div id="padre">
	<div id="insertar" class="form-group">
	<h1>Registrar Mascota</h1>
 <form action="../../ServletMascota" enctype="multipart/form-data" method="Post">
 	<label>Nombre</label><input type="text" name="nombre" required="" class="form-control">
        <label>Descendencia</label><input type="text" name="desc" required="" class="form-control">
    <label>Operaciones</label><select name="operaciones" required="" class="form-control">
        <option>Ha sido Operado</option>
                <option value="Si">Si</option>
                <option value="No">No</option>
    </select>
    <label>Tipo</label><select name="tam" required="" class="form-control">
        <option>Tipo de Mascota</option>
                <option value="Perro">Perro</option>
                <option value="Gato">Gato</option>     
    </select>
     <label>Edad</label><input type="text" name="edad" required="" class="form-control">
    <label>Raza</label><input type="text" name="raza" required="" class="form-control">
    <label>Cedula del Propietario</label><input type="text" name="cedula" required="" class="form-control">
    <label>Foto</label><input id="inp" type="file" name="IMG" >
      <div class="form-group" id="bot">
      <input type="submit" name="inmasc" value="Registrar Mascota" class="btn btn-primary">
      </div>
    </form>
</div>
</div
</body>
</html>
