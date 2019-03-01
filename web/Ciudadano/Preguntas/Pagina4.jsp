<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Preguntas</title>
    <link rel="stylesheet" href="Estilos.css">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>

  </head>
  <body>
        <%
            HttpSession ht = request.getSession();
            String datd=(String)ht.getAttribute("nom1");
            Integer ani=(Integer)ht.getAttribute("ani1");
        %>
        <%--<p>usu</p><%=datd%>--%>
        <%
            String dat1=request.getParameter("res1");
            String dat2=request.getParameter("res2");
            String dat3=request.getParameter("res3");
            String dat4=request.getParameter("res4");
            String dat5=request.getParameter("res5");
            String dat6=request.getParameter("res6");
            String dat7=request.getParameter("res7");
            String dat8=request.getParameter("res8");
            String dat9=request.getParameter("res9");
            String dat10=request.getParameter("res10");
            String dat11=request.getParameter("res11");
            String dat12=request.getParameter("res12");
            String dat13=request.getParameter("res13");
            String dat14=request.getParameter("res14");
            String dat15=request.getParameter("res15");
            String dat16=request.getParameter("res16");
            String dat17=request.getParameter("res17");
            String dat18=request.getParameter("res18");
        %>
        
        <%--<p>ani</p><%=ani%>
        <p>res1</p><%=dat1%>
        <p>res2</p><%=dat2%>
        <p>res3</p><%=dat3%>
        <p>res4</p><%=dat4%>
        <p>res5</p><%=dat5%>
        <p>res6</p><%=dat6%>
        <p>res7</p><%=dat7%>
        <p>res8</p><%=dat8%>
        <p>res9</p><%=dat9%>
        <p>res10</p><%=dat10%>
        <p>res11</p><%=dat11%>
        <p>res12</p><%=dat12%>
        <p>res13</p><%=dat13%>
        <p>res14</p><%=dat14%>
        <p>res15</p><%=dat15%>
        <p>res16</p><%=dat16%>
        <p>res17</p><%=dat17%>
        <p>res18</p><%=dat18%>--%>
        
    <div class="container-fluid">
	<div class="row">
            <div id="Preguntas">
		<div class="col-md-12">
                    <h1>Encuesta</h1><br>
                        <form action="../../ServletInsertarPreguntas" method="Post">
			<div class="row">
				<div class="col-md-6">
                                    <fieldset class="form-group">
                                       <div class="row">
                                        <fieldset>
                                            <legend>19. ¿Se compromete a mantener informada a la Secretaría de Ambiente y Desarrollo Agropecuario sobre cualquier novedad que se presente con la mascota? <abbr title="This field is mandatory"></abbr></legend>
                                            <div class="col-sm-12">
					        <div class="form-check" style="margin-left:20px;">
					          <input type="radio" required name="res19" id="r1" value="1" ><label for="r1">Si </label>
					        </div>
					        <div class="form-check" style="margin-left:20px;">
					          <input type="radio" required name="res19" id="r2" value="0"><label for="r2">Naur</label>
					          </label>
					        </div>
					      </div>
                                        </fieldset>
                                    <fieldset>
                                            <legend>20. ¿Se compromete a brindar amor y respeto a la mascota? <abbr title="This field is mandatory"></abbr></legend>
                                            <div class="col-sm-12">
					        <div class="form-check" style="margin-left:20px;">
					          <input type="radio" required name="res20" id="r1" value="1" ><label for="r1">Si </label>
					        </div>
					        <div class="form-check" style="margin-left:20px;">
					          <input type="radio" required name="res20" id="r2" value="0"><label for="r2">Naur</label>
					          </label>
					        </div>
					      </div>
                                    </fieldset> 
                                   </fieldset>
                                </div>
			</div>
                    <input type='submit' name='fin' value='Finalizar' class='btn btn-primary active btn-sm'>
                    <input type='hidden' name='res1' value='<%=dat1%>'>
                    <input type='hidden' name='res2' value='<%=dat2%>'>
                    <input type='hidden' name='res3' value='<%=dat3%>'>
                    <input type='hidden' name='res4' value='<%=dat4%>'>
                    <input type='hidden' name='res5' value='<%=dat5%>'>
                    <input type='hidden' name='res6' value='<%=dat6%>'>
                    <input type='hidden' name='res7' value='<%=dat7%>'>
                    <input type='hidden' name='res8' value='<%=dat8%>'>
                    <input type='hidden' name='res9' value='<%=dat9%>'>
                    <input type='hidden' name='res10' value='<%=dat10%>'>
                    <input type='hidden' name='res11' value='<%=dat11%>'>
                    <input type='hidden' name='res12' value='<%=dat12%>'>
                    <input type='hidden' name='res13' value='<%=dat13%>'>
                    <input type='hidden' name='res14' value='<%=dat14%>'>
                    <input type='hidden' name='res15' value='<%=dat15%>'>
                    <input type='hidden' name='res16' value='<%=dat16%>'>
                    <input type='hidden' name='res17' value='<%=dat17%>'>
                    <input type='hidden' name='res18' value='<%=dat18%>'>
                    <%
                        if (request.getParameter("fin")!=null) {
                        HttpSession htt=request.getSession();
                        String dato= new String(datd);
                        htt.setAttribute("nom1", dato);
                        Integer dato3= new Integer(ani);
                        htt.setAttribute("ani1", dato3);
                        }
                    %>
                    </form>
                    <br>
                    <input type='submit' name='volve' value='Volver' class='btn btn-danger btn-sm'>
                </div>
	</div>
</div>
</body>
</html>