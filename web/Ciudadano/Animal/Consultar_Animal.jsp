<%@page import="javax.swing.JOptionPane"%>
<%@page import="Modelo.Preguntas.Respu"%>
<%@page import="Modelo.Preguntas.GSRespuestaFin"%>
<%@page import="Modelo.Administrador.Ciudadano.Ciudadano"%>
<%@page import="Modelo.Preguntas.Respuestas"%>
<%@page import="Modelo.Administrador.Ciudadano.GSCiudadanoAdmin"%>
<%@page import="Modelo.Usuario.Usuario"%>
<%@page import="Modelo.Usuario.GSUsuario"%>
<%@page import="Modelo.Administrador.Animal.Animal"%>
<%@page import="Modelo.Administrador.Animal.GSAnimalAdmin"%>
<%@page import="java.util.ArrayList"%>

                        
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
      <title>Animal</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="CSS/Estilo.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" ></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  	<script src="JQ/jquery-3.3.1.min.js"></script>
        <script src="JQ/main.js"></script>
        
</head>
    <body>
       
    <%
        
        HttpSession ht = request.getSession();
        String dat2=(String)ht.getAttribute("nom1");
        %>
        <%
                ArrayList<GSUsuario> datc1 = new ArrayList<>();
                Usuario co1 = new Usuario();
                datc1=co1.Consultar1(dat2);
                GSUsuario cgsc= new GSUsuario();
                for (int i = 0; i < datc1.size() ; i++) {
                        cgsc=datc1.get(i);
                %>
                    <input type='hidden' class='usu' value='<%=cgsc.getNom()%>' name="usu4">
                
            
        <div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<nav class="navbar navbar-expand-lg navbar-light bg-light navbar-dark bg-dark fixed-top">
				 
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="navbar-toggler-icon"></span>
                    </button> <a class="navbar-brand" href="../Login/login.jsp">PetApp</a>
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="navbar-nav ml-md-auto">
                            <a class="navbar-brand" href="">Usuario: <%=dat2%></a>
                                <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="" id="navbarDropdownMenuLink" data-toggle="dropdown">
                                    <img src="../../Uploads/FotosUsuarios/<%=cgsc.getFot()%>" class="fotomod" 
                                      style="width:50px;height:50px;border-radius:200px 200px;"></a>     
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                        <form action="../Ciudadano/Consultar_Ciudadano.jsp" method="Post">
                            <input type='hidden' name='usu4' value='<%=cgsc.getNom()%>'>
                            <input type="submit" class="dropdown-item" name="per" value="Perfil"></a>
                        </form>
                        <form action="../Respuesta/Mostrar_Respuestas.jsp" method="Post">
                            <input type='hidden' name='usu3' value='<%=cgsc.getNom()%>'>
                            <input type="submit" class="dropdown-item" name="res" value="Respuesta"></a>
                        </form>
                        <form action="../Menu/MenuCiudadano.jsp" method="Post">
                            <input type='hidden' name='usu2' value='<%=cgsc.getNom()%>'>
                            <input type="submit" class="dropdown-item" name="men" value="Menu"></a>
                        </form>
                           
                        <%
                        if (request.getParameter("per")!=null){
                        HttpSession htt=request.getSession();
                        String naom=request.getParameter("usu4");
                        String dato= new String(naom);
                        htt.setAttribute("nom1", dato);
                        response.sendRedirect("../Ciudadano/Consultar_Ciudadano.jsp");
                        }
                        else if (request.getParameter("res")!=null){
                        HttpSession htt=request.getSession();
                        String naom=request.getParameter("usu3");
                        String dato= new String(naom);
                        htt.setAttribute("nom1", dato);
                        response.sendRedirect("../Respuesta/Mostrar_Respuestas.jsp");
                        }
                        else if (request.getParameter("men")!=null){
                        HttpSession htt=request.getSession();
                        String naom=request.getParameter("usu2");
                        String dato= new String(naom);
                        htt.setAttribute("nom1", dato);
                        response.sendRedirect("../Menu/MenuCiudadano.jsp");
                        }
                        %>
                            <div class="dropdown-divider">
                        </div> <a class="dropdown-item" href="../../../Cerrar.php">Cerrar Sesion</a>
                    </div>
						
						</li>
					</ul>
				</div>
			</nav>
		</div>
	</div>
</div>    
	
    <h3 class="display-4" style="margin-top: 70px;">Animal</h3>
    	        <%
                ArrayList<GSAnimalAdmin> dat = new ArrayList<>();
                Animal co = new Animal();
                dat=co.Consultar();
                GSAnimalAdmin cgsc2= new GSAnimalAdmin();
                for (int i2 = 0; i2 < dat.size() ; i2++) {
                        cgsc2=dat.get(i2);
                %>
                <div id="centro">
                <div class="caja1">
                    <table class="table">
                    <tr>
                    <thead class='thead-dark'>
                    <th><%=cgsc2.getNom()%></th>
                    </thead>
                    </tr>
                    </table>
                </div>
                
                <div class="caja2">
                    <table class="table">
                        <%    
                        ArrayList<GSCiudadanoAdmin> dares = new ArrayList<>();
                        Ciudadano cores = new Ciudadano();
                        dares=cores.Consultar1(dat2);
                        GSCiudadanoAdmin cgscres= new GSCiudadanoAdmin();
                
                        for (int ire = 0; ire < dares.size() ; ire++) {
                        cgscres=dares.get(ire);%>
                        
                
                        <tr>
                        <th><img src="../../Uploads/FotosAnimal/<%=cgsc2.getTam()%>" width="100" height="100"></th>
                        </tr>
                        <tr>
                        <th>Codigo</th>
                        <th><%=cgsc2.getCod()%></th>
                        </tr>
                        <tr>
                        <th>Nombre</th>
                        <th><%=cgsc2.getNom()%></th>
                        </tr>
                        <tr>
                        <th>Tipo</th>            
                        <th><%=cgsc2.getTip()%></th>
                        </tr>
                        <tr>
                        <th>Edad</th>
                        <th><%=cgsc2.getEda()%></th>
                        </tr>
                        <tr>
                        <th>Raza</th>
                        <th><%=cgsc2.getRaz()%></th>
                        </tr>
                        <tr>

                        <th>Tamaño</th>
                        <th><%=cgsc2.getGen()%></th>
                        </tr>
                        <th>Genero</th>
                        <th><%=cgsc2.getCol()%></th>
                        <tr>
                        <th>Color</th>
                        <th><%=cgsc2.getFot()%></th>
                        </tr> 
                        
                        
                        <form method='POST' action='../../ServletRespuesta'>
                        <input type='submit' name='readop' heigth='100px' width='100px' src='Imagenes/adoptame.png' class='img-responsive slideanim' id='logoadopta'  >
                        <h1>Adoptame</h1>
                        <input type='hidden' name='code' value='<%=cgsc2.getCod()%>'>
                        <input type='hidden' name='cedu' value=' <%=cgscres.getCed()%>'>
                        <input type='text' name='dat1' value='<%=dat2%>'>
                        <%
                        ArrayList<GSRespuestaFin> datfin1 = new ArrayList<>();
                        Respu cofin1 = new Respu();
                        datfin1=cofin1.Consultar(cgscres.getCed());
                        GSRespuestaFin cgscfin1= new GSRespuestaFin();
                        for (int ifin1 = 0; ifin1 < datfin1.size() ; ifin1++) {
                                cgscfin1=datfin1.get(ifin1);
                        %>
                        <input type='text' name='res1' value='<%=cgscfin1.getRe1()%>'>
                        
                        <%}%>
                        </form>
              
                
                
                </table>
            </div>
            </div>
            <%}}}%>
    </body>
</html>

