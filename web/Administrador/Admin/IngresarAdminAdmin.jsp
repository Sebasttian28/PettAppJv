<%-- 
    Document   : IngresarAdminAdmin
    Created on : 23/11/2018, 07:56:53 AM
    Author     : KnokinGm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
     <title>Insertar Usuario del Administrador</title>

   <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" media="Screen" href="../../../PettAppJ/Administrador/Admin/CSS/Estilo.css" >
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
   
   </head> 

   
   <body id="fondox">


    <form action="Consultar_Admin.jsp">
    <input type="submit" name="volver" value="Volver" class="btn btn-outline-light" id="vol">
    </form>
        <center><div  id="insertar">
        <form action="../../ServletIngresoAdmin" enctype="multipart/form-data" method="Post">
            <center><p class="lead">Insertar Administrador</p></center>
        <p>Usuario</br><input type="text" name="usu" size="30" class="form-control"></p>
        <p>Foto</br><input type="file" name="foto" size="30"  id="quitar"></p>
        <input type="submit" name="botonfunci" value="Guardar" class="btn btn-primary">
        </form>
        </div>
        </center></body>
</html>
