<%-- 
    Document   : Ingresar_Funcionario
    Created on : 23/11/2018, 08:48:34 AM
    Author     : KnokinGm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <link rel="stylesheet" href="../Funcionario/CSS/EstiloIngresoFuncionarios.css">
        <title>Funcionario</title>
    </head>
    <body id="fondox">
        <form action="Consultar_Funcionarios.jsp">
    <input type="submit" name="volver" value="Volver" class="btn btn-outline-light" id="vo">
    </form>
        <center><div  id="insertar">
        <form action="../../ServletFuncionario" enctype="multipart/form-data" method="Post">
            <center><p class="lead">Insertar Funcionario</p></center>
        <p>Cedula</br><input type="text" name="cedula" size="30" class="form-control"></p>
        <p>Telefono</br><input type="text" name="telefono" size="30" class="form-control"></p>
        <p>Nombre</br><input type="text" name="nombre" size="30" class="form-control"></p>
        <p>Correo</br><input type="text" name="correo" size="30" class="form-control"></p>
        <p>Dependencia</br><input type="text" name="dependencia" size="30" class="form-control"></p>
        <p>Foto</br><input type="file" name="foto" size="30"></p>
        <input type="submit" name="botonfunci" value="Guardar" class="btn btn-primary">
        </form>
        </div>
        </center>
    </body>
</html>


