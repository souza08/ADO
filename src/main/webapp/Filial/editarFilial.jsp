<%@page import="br.com.senac.pi3.model.filial.Filial"%>
<%@page import="java.util.List"%>
<%@page import="br.com.senac.pi3.model.categoria.Categoria"%>
<%@page import="br.com.senac.pi3.model.produto.Produto"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Produto</title>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
        <link href="default.css" rel="stylesheet" type="text/css" media="all" />
        <link href="fonts.css" rel="stylesheet" type="text/css" media="all" />

        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>

        <style><%@include file="../CSS/default.css" %></style>
        <style><%@include file="../CSS/fonts.css" %></style>

    </head>
    <body>
        <% Filial filial = (Filial) session.getAttribute("FilialAtualiza");
        
           //List<Categoria> listaCategoria = (List<Categoria>) session.getAttribute("ListaCategoriaAtualiza");
        
        
        %>
        <div id="wrapper3">
            <div id="three-column" class="container">
                <div><span class="arrow-down"></span></div>

                <div id="tbox1" class="paginaDeGerenciamento"> <span class="icon icon-group"></span>
                    <div id="textCustom" class="title">	<h2>Editar Filail</h2> </div>
                </div>

                <a id="botaoCustom" href="/XPTOTECH/dashboard.jsp" class="button">Voltar</a>

                <div class="container" >

                    <div class="cadastroFormulario" >

                        <form method="post" action="EditarFilial">

                            <div class="cnpj">					
                                <label  for="nome">CNPJ: </label>			
                                <input  value="<%= filial.getCnpj()%>" requerid="" name="cnpj" type="text" id="cnpj" OnKeyPress="formatar('##.###.###/####-##', this)" class="form-control input-sm"> </br>
                            </div>

                            <div  class="desc_nome">
                                <label  for="desc_nome">Razão social: </label>
                                <input value="<%= filial.getNome()%>"  requerid="" name="desc_nome" type="text" maxlength="50" id="desc_nome" class="form-control input-sm"> </br>
                            </div>			

                            <div  class="desc_fantasia">
                                <label  for="desc_fantasia">Fantasia:  </label>
                                <input  value="<%= filial.getFantasia()%>" requerid="" name="desc_fantasia" maxlength="50" type="text" id="desc_fantasia" class="form-control input-sm"> </br>
                            </div>

                            <div  class="telefone">
                                <label  for="telefone">Telefone:  </label>
                                <input value="<%= filial.getTelefone()%>" requerid=""  maxlength="10"  name="telefone" type="text" id="telefone" class="form-control input-sm" > </br>
                            </div>
                            
                            <div class="botaoCadastrarFilial">
                                <input type="submit" class="btn btn-primary" value="Cadastrar"></button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>      

        <c:import url="../Estrutura/footer.jsp"></c:import>
    </body>
</html>