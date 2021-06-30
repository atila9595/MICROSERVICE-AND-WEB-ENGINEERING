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
<title>home</title>

<c:set value="${pageContext.request.contextPath}" var="contextPath" />
<link rel="stylesheet" href="${contextPath}/css/bootstrap.css">
</head>
<body style="background-color: #a3def3">

	
		 <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="${contextPath}/home">Home</a>
                    </li>
                    <li>
                    	<a href="${contextPath}/home?page=falecomnosco">Fale com nosco</a>
                    </li>
                    <li>
                    	<a href="${contextPath}/paciente">Entrar</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
	
	<div class="container">
		<div class="row">
			<div class="col-md-5"></div>
			<div class="col-md-5"></div>
		</div>

		<div class="container">
			<h1 class="jumbotron text-center" style="background-color: #a3def3">Bem
				vindo ao PS13SI</h1>
			<div class="row">
				<div class="col-md-3">
					<img src="${contextPath}/image/boot1.jpg" width="300px"
						height="200px">
				</div>
				
				<div class="col-md-1"></div>
				<div class="col-md-3">
					<img src="${contextPath}/image/boot2.jpg" width="300px"
						height="200px">
				</div>
				<div class="col-md-1"></div>
				<div class="col-md-3">
					<img src="${contextPath}/image/boot3.jpg" width="300px"
						height="200px">
				</div>



			</div>
			<div class="row"></div>
		</div>


		<br>
		<h4>Sobre a PS13SI:</h4>
		<h4>a PS13SI é uma startup que consiste na criação e formação de
			BootCamp para pequenas, médias e grandes empresas Tech da América
			Latina. As especialidades são diversas dentre o mundo de TI, mas com
			o foco nas áreas de UX, Design, Desenvolvimento BackEnd,
			Desenvolvimento FrontEnd, Desenvolvimento Mobile, DevOps, DevSecOps,
			Machine Learning, IA e outras.</h4>


		<h4>Os Bootcamps da PS13SI envolvem um plano de treinamento
			intensivo com elaboração de conteúdo,contratação de professores,
			configuração do espaço físico, triagem de candidatos, validação de
			conhecimento, coach de carreira e recrutamento/direcionamento para o
			mercado de trabalho. Para mais informações, faça o cadastro no botão
			abaixo.</h4>

		<br> <br>

	</div>

	<script src="${contextPath}/js/bootstrap.bundle.js"></script>
	<script src="${contextPath}/js/bootstrap.js"></script>
    <script src="${contextPath}/js/jquery.js"></script>
    <script src="${contextPath}/js/bootstrap.min.js"></script>
</body>
</html>