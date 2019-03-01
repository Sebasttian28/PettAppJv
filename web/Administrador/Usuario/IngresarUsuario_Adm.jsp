<%-- 
    Document   : IngresarUsuario_Adm
    Created on : 23/11/2018, 08:55:28 AM
    Author     : KnokinGm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  	<link rel="stylesheet" href="CSS/EstiloIngresoUsuario.css">
        <title>JSP Page</title>
    </head>
    <body background="Imagenes/Usuario.jpg" class="img-fluid" alt="Responsive image">
        <center><div  id="Formulario">
         <form action="../../ServletUsuario">
             <center><p class="lead">Insertar Usuario</p></center>
        <p>Cedula</br><input type="text" name="cedula"  required id="ced" class="form-control"></p>
        <p>Nombre De Usuario</br><input type="text" name="nombre"  required id="nomb" class="form-control"></p>
        <p>Contraseña</br><input type="password" name="clave"  required id="con" class="form-control"></p>
        <input type="submit" name="boton1" value="Registrar Nuevo Usuario" id="ing" class="btn btn-outline-warning">
         </form>
            </div>
        </body>
</html>
