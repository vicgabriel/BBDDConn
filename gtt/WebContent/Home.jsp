<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="modelos.*"%>
<%@ page import="controladores.*"%>
<%@ page import="java.util.List"%>
<%
List<home> hom = FotoController.gethom();
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
				<a href= "descImagen.jsp?id_img='%><%= g.getId()%>'" ><img class="img-fluid img-thumbnail" src="img/<%=g.getUrl()%>" width="200" height="150"> </a>
				<label><%=g.getUsi()%></label>
				<label><%=g.getLikes()%></label>
			</div>
			<%
				}
			%>
		</div>
	</div>
</body>
</html>