<%-- 
    Document   : IngresarAnimal_Admin
    Created on : 6/02/2019, 08:35:58 AM
    Author     : KnokinGm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Insertar Animal 1</title>
</head>
   <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../../../PettAppJ/Administrador/Animal/CSS/Estilo.css">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<body id="fondox">



   

    <form action="Consultar_Animal.jsp" >

    <input type="submit" name="volver" value="Volver" class="btn btn-outline-light" id="vol">
    </form>
<div id="padre">
	<div id="insertar" class="form-group">
	<h1>Registrar Animal</h1>
 <form action="../../ServletAnimal" enctype="multipart/form-data" method="Post">
 	<label>Nombre</label><input type="text" name="nombre" required="" class="form-control">
    <label>Tipo</label><select name="tipo" required="" class="form-control">
        <option>Tipo De Animal</option>
                <option value="perro">Perro</option>
                <option value="gato">Gato</option>
    </select>
    <label>Edad</label><input type="text" name="edad" required="" class="form-control">
    <label>Raza</label><input type="text" name="raza" required="" class="form-control">
    <label>Tamaño</label><select name="tam" required="" class="form-control">
        <option>Tamaño del Animal</option>
                <option value="Grande">Grande</option>
                <option value="Mediano">Mediano</option>
                <option value="Pequeño">Pequeño</option>
             
    </select>
    <label>Genero</label><select name="genero" required="" class="form-control">
        <option>Genero del Animal</option>
                <option value="macho">Macho</option>
                <option value="hembra">Hembra</option>
             
    </select>
    <label>Color</label><input type="text" name="color" required="" class="form-control">
    <label>Foto</label><input id="inp" type="file" name="IMG" >
      <div class="form-group" id="bot">
      <input type="submit" name="inganimalf" value="Registrar Animal" class="btn btn-primary">
      </div>
    </form>
</div>
</div>

</body>
</html>

