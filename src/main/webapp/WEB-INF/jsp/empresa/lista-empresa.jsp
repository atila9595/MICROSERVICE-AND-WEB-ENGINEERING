<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Empresa - Listagem</title>
    
    <c:set value="${pageContext.request.contextPath}" var="contextPath"/>
    
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
            <div class="col-md-12">
				
				<h1>Empresa</h1>
				
				<p class="toolbar">
				
					<a class="create btn btn-default" href="${contextPath}/empresa/form?page=novo-empresa">Novo Usuario</a>
	
					<span class="alert"></span>
				</p>
				
				<c:if test="${not empty messages}">
					<h3 class="alert alert-warning">${messages}</h3>
				</c:if>
				
				<table class="table table-striped">
					<thead>
						<tr>
							<th data-field="name">Nome</th>
							<th data-field="preco">Empresa</th>
							<th data-field="preco">Telefone</th>
							<th class="actions" width="220">Ações</th>
						</tr>
					</thead>
					<tbody>
					
					<c:forEach items="${empresaModel}" var="empresa">
						<tr>
							<td>${empresa.nome}</td>
							<td>${empresa.nomeEmpresa}</td>
							<td>${empresa.tel}</td>
							
							<td class="actions">
							
								<form:form action="${contextPath}/empresa/${empresa.id}" method="delete">
								
									<a class="btn btn-success btn-xs" href="${contextPath}/empresa/${empresa.id}">Detalhes</a>
									<a class="btn btn-warning btn-xs" href="${contextPath}/empresa/form?page=editar-empresa&id=${empresa.id}">Editar</a>
									<input type="submit" value="Excluir" class="btn btn-danger btn-xs">
								</form:form>
								
							</td>
						</tr>
					</c:forEach>
                    </tbody>
				</table>
            </div>
        </div>
		<hr>
    </div>

    <!-- jQuery -->
    <script src="${contextPath}/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${contextPath}/js/bootstrap.min.js"></script>
	

</body>
</html>