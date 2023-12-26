<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<%
	String nomb=request.getParameter("nombre");
	String apel=request.getParameter("apellido");
	String user=request.getParameter("usuario");
	String mail=request.getParameter("mail");
	String lugarEnt=request.getParameter("lugarEntr");
	String locali=request.getParameter("locali");
	String codPost=request.getParameter("codPost");
	String formaPago=request.getParameter("formaPago");
	String tarjTitu=request.getParameter("tarjtitular");
	String tarjNum=request.getParameter("tarjNum");
	String tarjVto=request.getParameter("tarjVto");
	String tarjClave=request.getParameter("tarjClave");
	
	
	//todo: validar en el backend user y pass
	try {
		ConexionDB conexion=new ConexionDB();
		Statement st=conexion.conectar();
		Integer okInsert=st.executeUpdate("INSERT INTO pedidos( nombre, apellido, usuario, mail, lugarentrega, localidad, codpostal, formadepago, tarjtitular, tarjnumero, tarjvto, tarjclave) VALUES ('"+nomb+"','"+apel+"','"+user+"','"+mail+"','"+lugarEnt+"','"+locali+"','"+codPost+"','"+formaPago+"','"+tarjTitu+"','"+tarjNum+"','"+tarjVto+"','"+tarjClave+"')");
		
		if(okInsert.equals(1)) {
			response.sendRedirect("../view/listadoProvincia.jsp");
		} else {
			response.sendRedirect("../view/altaPedidos.jsp?mensaje=Error%20al%20agregar%20un%20Pedido");
		}
		
	} catch (Exception e) {
		//enviar email al desarrollador
		response.sendRedirect("../view/altaPedidos.jsp?mensaje=Error%20al%20agregar%20un%20Pedido");
	}
	
	
%>