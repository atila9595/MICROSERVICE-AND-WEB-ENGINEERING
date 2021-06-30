<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>

<head>

    <title>Usuario - Detalhe</title>
    
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
            <div class="col-lg-12">
                <div class="well">
					
					<h2>Empresa</h2>
					
						<div class="form-group">
							<label class="control-label" for="nome">Nome:</label>
							<b>${empresaModel.nome}</b>
                        </div>
                        
                        <div class="form-group">
							<label class="control-label" for="nome">Nome da empresa:</label>
							<b>${empresaModel.nomeEmpresa}</b>
                        </div>
                        
                         <div class="form-group">
							<label class="control-label" for="nome">Endereço:</label>
							<label class="label label-default">${empresaModel.endereco}</label>
                        </div>
                        
                        <div class="form-group">
							<label class="control-label" for="nome">Telefone:</label>
							<label class="label label-default">${empresaModel.tel}</label>
						</div>
						
						<hr>
						
						<a class="btn btn-primary btn-lg" href="${contextPath}/empresa/form?page=editar-empresa&id=${empresaModel.id}">Editar</a>
						<a class="btn btn-default btn-lg" href="${contextPath}/empresa">Voltar</a>
                            
                        <br>
                        <br>
					
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