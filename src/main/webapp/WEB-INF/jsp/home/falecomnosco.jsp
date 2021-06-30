<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fale com nosco</title>
<c:set value="${pageContext.request.contextPath}" var="contextPath" />
<link href="${contextPath}/css/bootstrap.css" rel="stylesheet">
<link href="${contextPath}/css/small-business.css" rel="stylesheet">
</head>
<body>

	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li><a href="${contextPath}/home">Home</a></li>
					<li><a href="${contextPath}/home?page=falecomnosco">Fale
							com nosco</a></li>
					<li><a href="${contextPath}/empresa">Entrar</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<c:if test="${not empty messages}">
		<h3 class="alert alert-warning">${messages}</h3>
	</c:if>


	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="well">

					<h2>Fale Conosco</h2>

					<form action="${contextPath}/home/salvar" method="post">

						<spring:hasBindErrors name="empresaModel">
							<div class="alert alert-danger" role="alert">
								<form:errors path="*" class="has-error" />
							</div>
						</spring:hasBindErrors>

						<div class="form-group">
							<label class="control-label" for="email">Email:</label> <input
								type="text" name="email" id="email" class="form-control"
								maxlength="50" size="50" required="required" /> <font color="red"><form:errors
									path="email" /></font><br />
						</div>

						<div class="form-group">
							<label class="control-label" for="assunto">Assunto:</label> <input
								type="text" name="assunto" id="assunto" class="form-control"
								maxlength="50" size="50" required="required" /> <font color="red"><form:errors
									path="assunto" /></font><br />
						</div>

						<div class="form-group">
							<label class="control-label" for="menssagem">Messagem:</label><br>
							<textarea rows="4" cols="100" name="menssagem" required="required"></textarea>
						</div>

						<hr>

						<a class="btn btn-default btn-lg" href="${contextPath}/home">Cancelar</a>
						<button type="submit" class="btn btn-primary btn-lg">Enviar</button>

						<br> <br>
					</form>

				</div>
			</div>
		</div>
	</div>



	<script src="${contextPath}/js/bootstrap.bundle.js"></script>
	<script src="${contextPath}/js/bootstrap.js"></script>
	<script src="${contextPath}/js/jquery.js"></script>
	<script src="${contextPath}/js/bootstrap.min.js"></script>
</body>
</html>