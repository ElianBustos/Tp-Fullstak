<!doctype html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Editar informacion</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
  </head>
  <body class="bg-dark">
	<%
	String id=request.getParameter("id");
	String nombre=new String();
	String apel=new String();
	String usuario=new String();
	String mail=new String();
	String lugarEntr=new String();
	String locali=new String();
	String codPost=new String();
	String formaPago=new String();
	String tarjtitular=new String();
	String tarjNum=new String();
	String tarjVto=new String();
	String tarjClave=new String();
	
	
	
	try {
		ConexionDB con=new ConexionDB();
		Statement st=con.conectar();
		ResultSet rs=st.executeQuery("SELECT * FROM pedidos WHERE idpedido="+id);
		
		if(rs.next()) {
			nombre=rs.getString("nombre");
			apel=rs.getString("apellido");
			usuario=rs.getString("usuario");
			mail=rs.getString("mail");
			lugarEntr=rs.getString("lugarentrega");
			locali=rs.getString("localidad");
			codPost=rs.getString("codpostal");
			formaPago=rs.getString("formadepago");
			tarjtitular=rs.getString("tarjtitular");
			tarjNum=rs.getString("tarjnumero");
			tarjVto=rs.getString("tarjVto");
			tarjClave=rs.getString("tarjclave");
			
		} else {
			response.sendRedirect("listadoProvincia.jsp?mensaje=No%20existe");
		}
		
	} catch (Exception e) {
		response.sendRedirect("listadoProvincia.jsp?mensaje=Hubo%20un%20problema%contactesé%20con%20el%20desarrollador");
		
	}
	
	%>	  
  
  	<jsp:include page="menu.jsp" />
  	
	<div class="container text-center bg-white w-50 bg-body-secondary">
    	<div class="border rounded m-2">
			<div class="text-center fs-3 my-4">Modificar Informacion </div>
			
			
			<div class="d-flex justify-content-center">
				<form action="../controller/updPedidos.jsp" method="post">
					<input type="hidden"name="id" value="<% out.print(id); %>">
					
					
	<!--  <input type="text" name="lugarEntr"value="<% out.print(lugarEntr); %>" class="form-control mb-3" placeholder="entrega" required>-->
					<div class="row d-flex justify-content-center ">
				
				
					<div class="col-3">
					<label for="nomb" >Nombre:</label>
					<input type="text" name="nombre" value="<% out.print(nombre); %>" class="form-control mb-3" placeholder="nombre" required>					
					
					<label for="apel">Apellido:</label>
					<input type="text" name="apellido" value="<% out.print(apel); %>" class="form-control mb-3" placeholder="nombre" required>
					
					<label for="user">Usuario:</label>
					<input type="text" name="usuario"value="<% out.print(usuario); %>" class="form-control mb-3" placeholder="usuario" required>
					
					<label for="email">Email:</label>
					<input type="email"name="mail" value="<% out.print(mail); %>" class="form-control mb-3" placeholder="mail" required>
					</div>
					
					<div class="col-3">
					
					<label for="locali">localidad:</label>
				    <input type="text" name="locali" value="<% out.print(locali); %>" class="form-control mb-3" placeholder="localidad" required>
					
					<label for="codi">Codigo postal:</label>
					<input type="text" name="codPost"value="<% out.print(codPost); %>" class="form-control mb-3" placeholder="codigo postal" required>
					
					<label for="forma">Forma de pago:</label>
					<input type="text" name="formaPago" value="<% out.print(formaPago); %>" class="form-control mb-3" placeholder="forma de pago" required>
					
					</div>
					
					<div class="col-3">
					
					
					<label for="tartTitu">Titular de la tarjeta:</label>
					<input type="text" name="tarjtitular"value="<% out.print(tarjtitular); %>" class="form-control mb-3" placeholder="tarjTitular" required>
					
					<label for="tartNum">Numero de la tarjeta:</label>
					<input type="text" name="tarjNum" value="<% out.print(tarjNum); %>" class="form-control mb-3" placeholder="tartNum" required>
					
					<label for="tarjVto">Vencimiento de la tarjeta:</label>
					<input type="text" name="tarjVto"value="<% out.print(tarjVto); %>" class="form-control mb-3" placeholder="TarjVto" required>
					
					<label for="tarjClave">Clave de la tarjeta:</label>
					<input type="text" name="tarjClave"value="<% out.print(tarjClave); %>" class="form-control mb-3" placeholder="tarjClave" required>
			
					</div>
				</div>
					<input type="submit" value="Enviar" class="btn btn-outline-primary text-dark mb-3 text-center">
				</form>
			</div>
			<div id="mensaje" ></div>
	    	<% 
	    		String mensaje=request.getParameter("mensaje");
	    		if(mensaje!=null){
	    			out.println("<div class='bg-danger text-center my-1 p-2'>");
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