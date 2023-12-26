<!doctype html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Agregar informacion</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
  </head>
  <body class="bg-dark">
  	<jsp:include page="menu.jsp" />
  	
<div class="container bg-white ">
    	<div class="border bg-body-secondary m-2 ">
			<div class="text-center fs-3 my-4 text-decoration-underline">Agregar Usuario y su informacion</div>
			<div class="  text-center">
				<form action="../controller/addPedidos.jsp" method="post">
				
				<div class="row d-flex justify-content-center ">
				
				
					<div class="col-3">
					<label for="nomb" >Nombre:</label>
					<input type="text" id="nomb" name="nombre"  class="form-control mb-3" placeholder="Nombre" required>
					
					<label for="apel">Apellido:</label>
					<input type="text" id="apel" name="apellido"  class="form-control mb-3" placeholder="Apellido" required>
					
					<label for="user">Usuario:</label>
					<input type="text" id="user" name="usuario"class="form-control mb-3" placeholder="Usuario" required>
					
					<label for="email">Email:</label>
					<input type="email" id="email" name="mail" class="form-control mb-3" placeholder="Email" required>
					</div>
					
					<div class="col-3">
					
					
					<label for="locali">localidad:</label>
					<input type="text" id="locali" name="locali"  class="form-control mb-3" placeholder="localidad" required>
					
					<label for="codi">Codigo postal:</label>
					<input type="text" id="codi" name="codPost" class="form-control mb-3" placeholder="codigo postal" required>
					
					<label for="forma">Forma de pago:</label>
					<input type="text" id="forma" name="formaPago"  class="form-control mb-3" placeholder="forma de pago" required>
					</div>
					
					<div class="col-3">
					
					
					<label for="tartTitu">Titular de la tarjeta:</label>
					<input type="text" id="tarTitu" name="tarjtitular"class="form-control mb-3" placeholder="Titular de la tarjeta" required>
					
					<label for="tartNum">Numero de la tarjeta:</label>
					<input type="text" id="tarjNum" name="tarjNum" class="form-control mb-3" placeholder="Numero de la tarjeta" required>
					
					<label for="tarjVto">Vencimiento de la tarjeta:</label>
					<input type="text" id="tarjVto" name="tarjVto" class="form-control mb-3" placeholder="Vencimiento de la tarjeta" required>
					
					<label for="tarjClave">Clave de la tarjeta:</label>
					<input type="text" id="tarjClave" name="tarjClave" class="form-control mb-3" placeholder="Clave de la tarjta" required>
			
					</div>
				</div>
					<input type="submit" value="Enviar" class="btn btn-outline-primary text-dark mb-3 text-center">
				</form>
			</div>
			<div id="mensaje" ></div>
	    	<% 
	    		String mensaje=request.getParameter("mensaje");
	    		if(mensaje!=null){
	    			out.println("<div class='bg-danger text-center my-1 p-2 '>");
	    			out.println(mensaje);	
	    			out.println("</div>");
	    		}
	    		
	    	%>				
    	</div>
		
	</div>
	
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    <script src="js/registro.js" ></script>
  </body>
</html>
	