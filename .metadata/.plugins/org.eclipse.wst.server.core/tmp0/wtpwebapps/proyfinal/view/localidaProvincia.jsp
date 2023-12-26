<!doctype html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Provincias y localidad del usuario</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
  </head>
  <body class="bg-dark">
  	<jsp:include page="menu.jsp" />
  	
  
    <div class=" mt-4 d-flex justify-content-center container text-center w-50 bg-body-secondary">
    	
    	
    	
    	<div class="d-flex flex-row">
    	
    	<div>
    	
    
    	<div class="text-center fs-3  text-decoration-underline">Localidad</div>
    	<jsp:include page="localidad.jsp" />
    	</div>
    	   	
    	   <div>
    	   
    	  
    	   <div class="text-center fs-3 my-1 text-decoration-underline">Provincias</div>
    	   <jsp:include page="provincia.jsp" />
    	    </div>
    	   	
    	  
    	   </div>
    	 
   
		
		
	</div>
	
	
	
	
	
	
	
	
	
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    
    
  </body>
</html>
	