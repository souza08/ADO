<%-- 
    Document   : dashboard
    Created on : 13/05/2017, 21:59:56
    Author     : Souza08
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />

<style><%@include file="CSS/default.css" %></style>
<style><%@include file="CSS/fonts.css" %></style>



<!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->
</head>
<body>
<div id="wrapper2" >
	<div id="welcome" class="container" >
		<div class="title">
		</div>
                <p style="color: white;" style=" text-shadow: black 5.1em 5.1em 0.5sem;">O QUE DESEJA FAZER ?</p>
	</div>
</div>
<div id="wrapper3">
<div id="three-column" class="container">
	<div><span class="arrow-down"></span></div>
        
        
	<div id="tbox2"> <span class="icon icon-suitcase"></span>
		<div class="title">
			<h2>Gerenciar seus Produtos</h2>
	</div>
		<a href="ListarProdutos" class="buttonGerenciar">Gerenciar</a>
	</div>
       
</div>
</div>

                
                <c:import url="Estrutura/footer.jsp"></c:import>
</body>
</html>

