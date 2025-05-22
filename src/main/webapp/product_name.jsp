<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="servlet.product_list" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>商品一覧</title>
</head>
<body>
    <h1>商品一覧</h1>
    <%
        List<product_list> productList = (List<product_list>) request.getAttribute("product_list");
        if (productList != null && !productList.isEmpty()) {
    %>
        <table border="1">
            <tr>
                <th>商品名</th>
                <th>価格</th>
            </tr>
            <% for(product_list p : productList) { %>
                <tr>
                    <td><%= p.getName() %></td>
                    <td><%= p.getPrice() %> 円</td>
                </tr>
            <% } %>
        </table>
    <%
        } else {
    %>
        <p>商品は登録されていません。</p>
    <%
        }
    %>
</body>
</html>
