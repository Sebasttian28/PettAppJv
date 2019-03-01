<%-- 
    Document   : Ingresar_Denuncia
    Created on : 23/11/2018, 09:10:06 AM
    Author     : KnokinGm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>Insertar Denuncias</title>
</head>
   <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../../../PettApp/Ciudadano/Denuncias/CSS/Estilos.css">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<body id="fondox">

  
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

</body>
    <form action="../Login/loginV.jsp" >
    <input type="submit" name="volver" value="Volver" class="btn btn-outline-light" id="vol">
    </form>
<div id="padre">
	<div id="insertar" class="form-group">
	<h1>Realizar Denuncia</h1>
        <form action="../../ServletDenuncia" enctype="multipart/form-data" method="Post">
 	<label>Fecha</label><input type="date" name="fecha" required="" class="form-control">
    <label>Tipo</label><select name="tipo" required="" class="form-control">
        <option>Tipo de Denuncia</option>
                <option value="Maltrato">Maltrato</option>
                <option value="Abandono">Abandono</option>
    </select>
    <label>Nit</label><input type="text" name="cedula" required="" class="form-control">
    <label>Denuncia</label><input type="text" name="denuncia" required="" class="form-control">
    <label>Evidencia</label><input id="inp" type="file" name="IMG" >
      <div class="form-group" id="bot">
      <input type="submit" name="denunci" value="Realizar Denuncia" class="btn btn-primary">
      </div>
    </form>
</div>
</div>

</body>
</html>
