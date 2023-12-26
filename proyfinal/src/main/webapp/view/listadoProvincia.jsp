<!doctype html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Listado Privado</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
  </head>
  <body class="bg-dark" >
  	<jsp:include page="menu.jsp" />
  	
    <div class=" d-flex justify-content-center  flex-column  bg-white w-100">
    	<div class="text-center fs-3 my-4 text-decoration-underline">Listado de Usuarios y su informacion</div>
    	
    		<div class="d-flex justify-content-center mb-4">
		    	<button type="button" class="btn btn-outline-primary text-dark " data-bs-toggle="modal" data-bs-target="#addModal">
				Agregar informacion del ususario
		 		</button>
 		
    	</div>
    	
    	
    	<% 
    		String mensaje=request.getParameter("mensaje");
    		if(mensaje!=null){
    			out.println("<div class='bg-danger text-center my-1 p-2'>");
    			out.println(mensaje);	
    			out.println("</div>");
    		}
    		
    	%>	  
    	  	
    
    	
    	
		<table class="table table-striped text-center table-bordered">
		  <thead class="table-warning ">
		    <tr>
		      <th scope="col">ID pedido</th>
		      <th scope="col">nombre</th>
		      <th scope="col">Apellido</th>
		       <th scope="col">Usuario</th>
		      <th scope="col">Mail</th>
		       <th scope="col"><a href="localidaProvincia.jsp"> localidad</a></th>
		      <th scope="col">Codigo postal</th>
		      <th scope="col">forma de pago</th>
		       <th scope="col">Tarjeta titular</th>
		       <th scope="col">Tarjeta numero</th>
		       <th scope="col">Vencimiento tarjeta </th>
		       <th scope="col">Tarjeta clave</th>
		       <th scope="col">Operaciones</th>
		    </tr>
		  </thead>
		  <tbody class=" ">
		    <% 
		    
		    try {
			    ConexionDB con=new ConexionDB();
			    Statement st=con.conectar();
			    ResultSet rs=st.executeQuery("SELECT * FROM pedidos");
			    while(rs.next()) {
			    	out.println("<tr>");
			    	
			    	out.println("<td>");
			    	Integer id=rs.getInt("idpedido");
			    	out.println(id);
			    	out.println("</td>");
			    	
			    	out.println("<td>");
			    	String nombre=rs.getString("nombre");
			    	out.println(nombre);
			    	out.println("</td>");		    	
			    	
			    	out.println("<td>");
			    	String apel=rs.getString("apellido");
			    	out.println(apel);
			    	out.println("</td>");
			    	
			    	out.println("<td>");
			    	String usuario=rs.getString("usuario");
			    	out.println(usuario);
			    	out.println("</td>");
			    	
			    	out.println("<td>");
			    	String mail=rs.getString("mail");
			    	out.println(mail);
			    	out.println("</td>");
			    	
		
			    	
			    	out.println("<td>");
			    	String locali=rs.getString("localidad");
			    	out.println(locali);
			    	out.println("</td>");
			    	
			    	out.println("<td>");
			    	String codPost=rs.getString("codpostal");
			    	out.println(codPost);
			    	out.println("</td>");
			    	
			    	out.println("<td>");
			    	String formaPago=rs.getString("formadepago");
			    	out.println(formaPago);
			    	out.println("</td>");
			    	
			    	out.println("<td>");
			    	String tarjtitular=rs.getString("tarjtitular");
			    	out.println(tarjtitular);
			    	out.println("</td>");
			    	
			      	out.println("<td>");
			    	String tarjNum=rs.getString("tarjnumero");
			    	out.println(tarjNum);
			    	out.println("</td>");
			    	
			      	out.println("<td>");
			    	String tarjVto=rs.getString("tarjVto");
			    	out.println(tarjVto);
			    	out.println("</td>");
			    	
			      	out.println("<td>");
			    	String tarjClave=rs.getString("tarjclave");
			    	out.println(tarjClave);
			    	out.println("</td>");
			    	
			    	
			    	
			    	
			    	out.println("<td>");
			    	out.println("<a href='editPedidos.jsp?id="+id+"'><i class='bi bi-pencil-fill m-1'></i></a>");
			    	out.println("<a href='#' data-bs-toggle='modal' data-bs-target='#deleModal' idpedido='"+id+"' nombre='"+nombre+"' apellido='"+apel+"' mail='"+mail+"'><i class='bi bi-trash-fill m-1'></i></a>");
			    	out.println("</td>");				    	
			    	
			    	out.println("</tr>");
			    }		    	
		    } catch (Exception e) {
		    	out.println("Error al cargar pedidos");
		    }
		    
		    

		    %>
		  </tbody>
		</table>    	
		
		
		
	</div>
	
	
	<div class="modal fade" id="addModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
       
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="text-center fs-3 my-4">Agregue el usuario y su información</div>
        
      <div class="border rounded modal-body text-center m-2">
			
			<div class="d-flex flex-column ">
				<form action="../controller/addPedidos.jsp" method="post">
					<label for="nomb">Nombre:</label>
					<input type="text" id="nomb" name="nombre"  class="form-control mb-3" placeholder="Nombre" required>
					<label for="apel">Apellido:</label>
					<input type="text" id="apel" name="apellido"  class="form-control mb-3" placeholder="Apellido" required>
					<label for="user">Usuario:</label>
					<input type="text" id="user" name="usuario"class="form-control mb-3" placeholder="Usuario" required>
					<label for="email">Email:</label>
					<input type="email" id="email" name="mail" class="form-control mb-3" placeholder="Email" required>
					<label for="locali">localidad:</label>
					<input type="text" id="locali" name="locali"  class="form-control mb-3" placeholder="localidad" required>
					<label for="codi">Codigo postal:</label>
					<input type="text" id="codi" name="codPost" class="form-control mb-3" placeholder="codigo postal" required>
					<label for="forma">Forma de pago:</label>
					<input type="text" id="forma" name="formaPago"  class="form-control mb-3" placeholder="forma de pago" required>
					<label for="tartTitu">Titular de la tarjeta:</label>
					<input type="text" id="tarTitu" name="tarjtitular"class="form-control mb-3" placeholder="Titular de la tarjeta" required>
					<label for="tartNum">Numero de la tarjeta:</label>
					<input type="text" id="tarjNum" name="tarjNum" class="form-control mb-3" placeholder="Numero de la tarjeta" required>
					<label for="tarjVto">Vencimiento de la tarjeta:</label>
					<input type="text" id="tarjVto" name="tarjVto" class="form-control mb-3" placeholder="Vencimiento de la tarjeta" required>
					<label for="tarjClave">Clave de la tarjeta:</label>
					<input type="text" id="tarjClave" name="tarjClave" class="form-control mb-3" placeholder="Clave de la tarjta" required>
			
				
				 <div class="modal-footer ">
			        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
			        <input type="submit"  class="btn btn-success" value="Agregar">
			      </div>
				
				</form>
			</div>
		
    	</div>
          
        
        
      </div>
      
     
            
      
    </div>
  </div>

	
	
	
	
	
	
	
	
	
	<div class="modal fade" id="deleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Eliminar Informacion del ususario</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <form action="../controller/delPedidos.jsp" method="post">
      <input type="hidden" name="idpedido" id="idpedido">
      <div class="modal-body text-center">
        
          <div class="mb-3">
          
             <label for="message-text" class="col-form-label">¿Desea eliminar al usuario?</label>
             <div id="dataId" class="text-danger "></div>
             <div id="dataNombre" class="text-danger "></div>
             <div id="dataApell" class="text-danger "></div>
             <div id="dataMail" class="text-danger "></div>
          </div>
          
        
        
      </div>
      
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
        <input type="submit"  class="btn btn-danger" value="Eliminar">
      </div>
              </form>
      
    </div>
  </div>
</div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    
    <script src="js/listPedidos.js"></script>
  </body>
</html>
	