<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<%
	String id=request.getParameter("id");
	String nombre=request.getParameter("nombre");
	String apel=request.getParameter("apellido");	
	String usuario=request.getParameter("usuario");
	String mail=request.getParameter("mail");
	String lugarEntr=request.getParameter("lugarEntr");
	String locali=request.getParameter("locali");
	String codPost=request.getParameter("codPost");
	String formaPago=request.getParameter("formaPago");
	String tarjtitular=request.getParameter("tarjtitular");
	String tarjNum=request.getParameter("tarjNum");
	String tarjVto=request.getParameter("tarjVto");
	String tarjClave=request.getParameter("tarjClave");
	
	
	//todo: validar en el backend user y pass
	try {
		ConexionDB conexion=new ConexionDB();
		Statement st=conexion.conectar();                                                                         		                                                                      
		Integer okUpde=st.executeUpdate("UPDATE pedidos SET nombre='"+nombre+"', apellido='"+apel+"' ,usuario='"+usuario+"' ,mail='"+mail+"', lugarentrega='"+lugarEntr+"', localidad='"+locali+"', codPostal='"+codPost+"', formadepago='"+formaPago+"', tarjtitular='"+tarjtitular+"', tarjnumero='"+tarjNum+"', tarjvto='"+tarjVto+"', tarjclave='"+tarjClave+"'  WHERE idpedido="+id);
		
		if(okUpde.equals(1)) {
			response.sendRedirect("../view/listadoProvincia.jsp");
		} else {
			response.sendRedirect("../view/editPedidos.jsp?mensaje=Error%20al%20modificar%20el%20usuario");
		}
		
	} catch (Exception e) {
		//enviar email al desarrollador
		response.sendRedirect("../view/editPedidos.jsp?mensaje=Error%20al%20modificar%20el%20usuario");
	}
	
	
%>