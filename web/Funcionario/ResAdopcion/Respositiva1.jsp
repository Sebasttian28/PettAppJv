<%-- 
    Document   : Respositiva
    Created on : 5/02/2019, 04:04:23 PM
    Author     : KnokinGm
--%>

<%@page import="Modelo.Administrador.Funcionario.Funcionario"%>
<%@page import="Modelo.Administrador.Funcionario.GSFuncionario"%>
<%@page import="Modelo.Administrador.Ciudadano.GSCiudadanoAdmin"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
           <title>Respuesta</title>
</head>
   <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../../../PettApp/Administrador/ResAdopcion/CSS/Estilo.css">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<body id="fondox">


      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="../Ciudadano/CSS/Estilo1.css">
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

</body>

        <%
            HttpSession ht = request.getSession();
            String datd=(String)ht.getAttribute("nomF");
        %>
    <form action="../Seguimiento/Continuar_Postulacion.jsp">
    <input type="submit" name="volver" value="Volver" class="btn btn-outline-light" id="vol">
    </form>
     
<div id="padre">

	<div id="insertar" class="form-group">
        
	<h1>Responder al Ciudadano</h1>
   
 <form action="../../ServletRpositivo">
        <%
           int an;
           String ced;
           an=Integer.parseInt(request.getParameter("animal"));
           ced=request.getParameter("cedula");
        %>
        <label>Respuesta </label><textarea type="text" name="posres" required="" class="form-control"></textarea>
      
        <input type='hidden' name='enca' required="" value="<%=datd%>" class="form_control">
       
        <input type="hidden" name="cedul" value="<%=ced%>" class="form-control">
<input type="hidden" name="anim" value="<%=an%>" class="form-control">
      <div class="form-group" id="bot">
          
      <input type="submit" name="posresp" value="Enviar Respuesta" class="btn btn-primary">
      </div>
     
    </form>
        
</div>
</div>

</body>
</html>

