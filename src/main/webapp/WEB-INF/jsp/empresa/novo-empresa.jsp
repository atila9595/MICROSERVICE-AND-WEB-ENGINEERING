<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>

<head>

<title>Produtos - Cadastro</title>

<c:set value="${pageContext.request.contextPath}" var="contextPath" />

<link href="${contextPath}/css/bootstrap.css" rel="stylesheet">
<link href="${contextPath}/css/small-business.css" rel="stylesheet">

</head>

<body style="background-color: #f6e5c7">

	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="${contextPath}/empresa">Empresas</a>
                    </li>
                    <li>
                    	<a href="${contextPath}/empresa/form?page=novo-empresa">Novo empresa</a>
                    </li>
                    <li>
                    	<a href="${contextPath}/home">sair</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

	<div class="container" style="background-color: #f4efe7">
		<div class="row">
			<div class="col-lg-12">
				<div class="well">

					<h2>Empresa</h2>

					<form action="${contextPath}/empresa/salvar" method="post">

						<spring:hasBindErrors name="empresaModel">
							<div class="alert alert-danger" role="alert">
								<form:errors path="*" class="has-error" />
							</div>
						</spring:hasBindErrors>

						<div class="form-group">
							<label class="control-label" for="nome">Nome:</label>
							<input type="text" name="nome" id="nome"
								class="form-control" maxlength="50" size="50" required="required" />
							<font color="red"><form:errors path="nome" /></font><br />
						</div>
						
						<div class="form-group">
							<label class="control-label" for="nomeEmpresa">Nome da empresa:</label>
							<input type="text" name="nomeEmpresa" id="nomeEmpresa"
								class="form-control" maxlength="50" size="50" required="required" />
							<font color="red"><form:errors path="nomeEmpresa" /></font><br />
						</div>

						<div class="form-group">
							<label class="control-label" for="endereco">Endereço:</label>
							<input type="text" name="endereco" id="endereco"
								class="form-control" maxlength="50" size="50" required="required" />
							<font color="red"><form:errors path="endereco" /></font><br />
						</div>

						<div class="form-group">
							<label class="control-label" for="telefone">Telefone:</label>
							<input type="tel" id="telefone" name="tel"
								class="form-control" required="required" />
							<font color="red"><form:errors path="telefone" /></font><br />
						</div>



						<hr>

						<a class="btn btn-default btn-lg" href="${contextPath}/empresa">Cancelar</a>
						<button type="submit" class="btn btn-primary btn-lg">Gravar</button>

						<br>
						<br>
					</form>

				</div>
			</div>
		</div>
	</div>

	<!-- jQuery -->
	<script src="${contextPath}/js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="${contextPath}/js/bootstrap.min.js"></script>

</body>
</html>