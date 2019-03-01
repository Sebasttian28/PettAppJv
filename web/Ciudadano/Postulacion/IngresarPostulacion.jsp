<%@page import="Modelo.Administrador.Ciudadano.Ciudadano"%>
<%@page import="Modelo.Administrador.Ciudadano.GSCiudadanoAdmin"%>
<%@page import="java.util.ArrayList"%>
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
    <link rel="stylesheet" href="../Postulacion/CSS/Estilo.css">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<body id="fondox">
        
        <%
            HttpSession ht = request.getSession();
            String datd=(String)ht.getAttribute("nom1");
            Integer ani=(Integer)ht.getAttribute("ani1");
            Integer res=(Integer)ht.getAttribute("res1");
        %>
    <form action="../Animal/Consultar_Animal.jsp" >
    <input type="submit" name="volver" value="Volver" class="btn btn-outline-light" id="vol">
    </form>
<div id="padre">
	<div id="insertar" class="form-group">
	<h1>Realizar Postulacion</h1>
        <form action="../../ServletPostulacion1" enctype="multipart/form-data" method="Post">

 	<label>Celular</label>
        <input type="text" name="telefono" pattern="[0-9]{10}" required="" title="digite numero celular" class="form-control">
        
        <label>Direccion de Contacto</label>
        <input type="text" name="direccion" required="" class="form-control">
        
        <label>Telefono Fijo</label>
        <input type="text" name="fijo" pattern="[0-9]{7}" required="" title="digite numero de telefono"  class="form-control">
        
        <label>Certificado Laboral</label>
        <input id="inp" type="file" name="IMG" required="">
        </br>
        
        <label>Fotocopia de Cedula</label>
        <input id="inp" type="file" name="Cpf" required="">
        </br>
        
        <label>Estrato</label>
        <input id="est" type="text" name="estrato" pattern="[1-6]{1}" required="" title="digite su estrato" required="" class="form-control">
        
        <label>Con cuantas Personas reside?</label>
        <input id="resi" type="text" name="residentes" pattern="[0-9]{1,2}" required="" title="numero de habitantes" required="" required="" class="form-control">
        
        <label>Zona en la que esta ubicada su Vivienda</label>
        <select name="ubicacion" id="ubi" required="" class="form-control">
        <option>Ubicacion</option>
        <option value="Rural">Rural</option>
        <option value="Urbano">Urbano</option>
        </select>
        
        <label>Tipo de Vivienda</label>
        <select name="tvivienda" id="tvi" required="" class="form-control">
        <option>Tipo</option>
        <option value="Casa">Casa</option>
        <option value="Apartamento">Apartamento</option>
        <option value="Finca">Finca</option>
        </select>
        
        
        <label>Recibo Publico</label>
        <input type="file" name="recibo" required="" id="inp">
        </br>
        
        
           

   <input type="text" name="coda" value="<%=ani%>" class="form-control">
   <input type="text" name="rpuntaje" value="<%=res%>" class="form-control">
   <%
   ArrayList<GSCiudadanoAdmin> dares = new ArrayList<>();
            Ciudadano cores = new Ciudadano();
            dares=cores.Consultar1(datd);
            GSCiudadanoAdmin cgscres= new GSCiudadanoAdmin();

            for (int ire = 0; ire < dares.size() ; ire++) {
            cgscres=dares.get(ire);
   %>
   <input type="text" name="cedula" value="<%=cgscres.getCed()%>" class="form-control">
   <%}%>   
    <div class="form-group" id="bot">
      <input type="submit" name="ingpostu" value="Realizar Postulacion1" class="btn btn-primary">
      </div>
     
    </form>
        

</div>
</div>

</body>

</html>

