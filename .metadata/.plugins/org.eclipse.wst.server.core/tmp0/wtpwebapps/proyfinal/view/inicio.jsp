<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Inicio</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style2.css">
  <link rel="icon" href="img/codoacodo.png">
  </head>
  <body class="">

	
	
    <div class="border rounded fs-5 m-3 p-1 text-center ">
    	Bienvenido Administrador
    </div>
    
    
    
    


    <div class="d-flex  m-5  justify-content-center">

      
    <div class="card m-3 " style="width: 18rem;">
   <img alt="cliente"  src=" ./img/cli.png">
  <div class="card-body bg-warning text-center">
    <h5 class="card-title">Usuarios</h5>
    
    <div class="border border-warning fs-5 p-2 wt-3 bg-dark" >
    <a   href="listadoUsuarios.jsp">Listado de Usuarios</a>
    </div>
    
    <div class="border border-warning fs-5 p-2 wt-3 bg-dark" >
    <a  href="altaUsuario.jsp">Agregar Usuario</a>
    </div>
     
  </div>
</div>

   
    <div class="card m-3 " style="width: 18rem;">
   <img alt="cliente" src="./img/usuarioIcono.png">
  <div class="card-body  bg-warning text-center">
    <h5 class="card-title">Informacion Privada</h5>
    
    
    <div class="border  fs-5 p-2 wt-3 bg-dark" >
    <a  href="listadoProvincia.jsp">informacion de usuarios</a> 
    </div>
    
    <div class="border border-warning fs-5 p-2 wt-3 bg-dark" >
      <a  href="altaPedidos.jsp">Agregar Informacion</a> 
    </div>

   
  </div>
</div>

  
   
   
 
 

    
    </div>
   
    
    
      
   	<% 
   		String mensaje=request.getParameter("mensaje");
   		if(mensaje!=null){
   			out.println("<div class='bg-danger text-center my-1 p-2'>");
   			out.println(mensaje);	
   			out.println("</div>");
   		}
   		
   	%>	
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
  </body>
</html>