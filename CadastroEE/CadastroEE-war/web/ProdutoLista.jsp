<%-- 
    Document   : ProdutoLista.jsp
    Created on : 25 de nov. de 2023, 02:18:30
    Author     : sendi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="cadastroee.model.Produto"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Lista de Produtos</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        
    </head>
    <body class="container">
        <h1>Lista de Produtos</h1>
            <td>
                <a class="btn btn-primary m-2" href="ServletProdutoFC?acao=formIncluir">Novo Produto</a>
            </td>
        <table class="table table-striped">
            <thead class="table-dark">
                <tr>
                    <th>#</th>
                    <th>Nome</th>
                    <th>Quantidade</th>
                    <th>Preço de Venda</th>
                    <th>Opções</th>

                </tr>
            </thead>
            
                             
                <%for (Produto produto : (List<Produto>) request.getAttribute("listaProdutos")) {%>
                
                    <tr>
                        <!-- Dados do Produto -->
                        <td><%=produto.getIdProduto()%></td>
                        <td><%=produto.getNome()%></td>
                        <td><%=produto.getQuantidade()%></td>
                        <td><%=produto.getPrecoVenda()%></td>

                        <!-- Links para Alteração e Exclusão -->
                        <td>
                            <a class="btn btn-primary m-2" href="ServletProdutoFC?acao=formAlterar&id=<%=produto.getIdProduto()%>">Alterar</a>
                            <a class="btn btn-danger m-2" href="ServletProdutoFC?acao=excluir&id=<%=produto.getIdProduto()%>">Excluir</a>
                        </td>
                    </tr>
               <%}%>
            
        </table>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    </body>
</html>