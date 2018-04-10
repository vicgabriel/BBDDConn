<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="modelos.home"%>
<%@ page import="controladores.FotoController"%>
<%@ page import="java.util.List"%>


<%
List<home> hom = FotoController.gethom();
List<home> img = FotoController.getimagen();
%>

<!doctype html>
<html lang="es">
<head>


<title>Home</title>
</head>
<body>

	<div class="container">
		<div class="row">
			<%
				for (home g : hom) {
			%>
			<div
				class="col-lg-3 col-md-4 col-sm-6 col-xs-12 col-12 text-center foto_home">
				<img class="img-fluid img-thumbnail" src="img/<%=g.url%>" width="200" height="150"> 
				<label><%=g.Usuario%></label>
				<label><%=g.likes%></label>
			</div>
			<%
				}
			%>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<%
				for (home h2 : img ) {
			%>
			<div
				class="col-lg-3 col-md-4 col-sm-6 col-xs-12 col-12 text-center foto_home">
				<img class="img-fluid img-thumbnail" src="img/<%=h2.url%>" width="200" height="150"> 
				<label><%=h2.Usuario%></label>
				<label><%=h2.likes%></label>
			</div>
			<%
				}
			%>
		</div>
	</div>

</body>
</html>