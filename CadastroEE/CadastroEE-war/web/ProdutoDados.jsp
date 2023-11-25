<%-- 
    Document   : ProdutoDados
    Created on : 25 de nov. de 2023, 03:08:18
    Author     : sendi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="cadastroee.model.Produto"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
    <title>Cadastro de Produto</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        
</head>
<body class="container">
       <%
            Produto produto = (Produto) request.getAttribute("produto");
            String acao = (produto == null) ? "incluir" : "alterar";
            String idProduto = (produto != null) ? (String) request.getAttribute("id") : null;
        %>
    <h1><%= acao == "incluir" ? "Cadastro" : "Alteracao" %> de Produto</h1>

    <!-- Formulário para cadastro de produto -->
    <form class="form" action="ServletProdutoFC" method="post">
   
        <input type="hidden" id="acao" name="acao" value="<%=acao%>">

        <% if (acao.equals("alterar")) { %>
            <input type="text" id="id" name="id"  hidden value="<%=produto.getIdProduto()%>">
        <% } %>

        <div class="mb-3">
            <label class="form-label" for="nome">Nome:</label>
            <input class="form-control" type="text" id="nome" name="nome" value="<%= (produto != null) ? produto.getNome() : "" %>">
        </div>
        
        <div class="mb-3">
            <label class="form-label" for="quantidade">Quantidade:</label>
            <input class="form-control" type="text" id="quantidade" name="quantidade" value="<%= (produto != null) ? produto.getQuantidade() : "" %>">
        </div>
        
        <div class="mb-3">
            <label class="form-label" for="precoVenda">Preço de Venda:</label>
            <input class="form-control" type="text" id="precoVenda" name="valor" value="<%= (produto != null) ? produto.getPrecoVenda() : "" %>">
        </div>

        <input class="btn btn-primary" type="submit" value="<%= (acao.equals("incluir")) ? "Incluir Produto" : "Alterar Produto" %>">
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    
</body>
</html>
