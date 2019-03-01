<%-- 
    Document   : Ingresar_Veterinaria
    Created on : 23/11/2018, 09:02:43 AM
    Author     : KnokinGm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <link rel="stylesheet" href="../Funcionario/CSS/EstiloIngresoFuncionarios.css">
        <title>Veterinaria</title>
    </head>
    <body id="fondox">
        <form action="Consultar_Veterinaria.jsp">
    <input type="submit" name="volver" value="Volver" class="btn btn-outline-light" id="vo">
    </form>
        <center><div  id="insertar">
        <form action="../../ServletVeterinaria" enctype="multipart/form-data" method="Post">
            <center><p class="lead">Insertar Veterinaria</p></center>
        <p>Nit</br><input type="text" name="nit" size="30" class="form-control"></p>
        <p>Telefono</br><input type="text" name="telefono" size="30" class="form-control"></p>
        <p>Nombre</br><input type="text" name="nombre" size="30" class="form-control"></p>
        <p>Direccion</br><input type="text" name="direccion" size="30" class="form-control"></p>
        <p>Foto</br><input type="file" name="foto" size="30"></p>
        <input type="submit" name="botonfunci" value="Guardar" class="btn btn-primary">
        </form>
        </div>
        </center>
    </body>
</html>
