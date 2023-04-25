<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<jsp:include page="header.jsp"></jsp:include>
<body>

	<div class="container text-center">
		<div class="row justify-content-around mt-4 pt-4">
			<div class="col-9 ">
				<strong class="text-success mt-4 pt-4">El alta  se ha realizado correctamente</strong>
				<p> <strong>Número de Registro: </strong>
				<c:out value="${idN}"></c:out></p>
						<p >
				<strong> Nombre: </strong>
				<c:out value="${nombreN}"></c:out></p>
					</div>
		</div>
		<form action="Controller" method="post">
			<input type="submit" class="btn btn-success large" name="enviar2" value="Nueva Alta">
		</form>
	</div>
</body>
</html>