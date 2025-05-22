<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>商品一覧</title>
</head>
<body>
    <h1>商品一覧</h1>
    <% 
        List<String> productNameList = (List<String>) request.getAttribute("product_name");
        if (productNameList != null && !productNameList.isEmpty()) {
    %>

        <p>テーブルに保存されている商品名一覧</p>
        <% for(String productName : productNameList) { %>
            <div><%= productName %></div>
        <% } %>
    <% 
        } else { 
    %>
        <p>商品名は登録されていません。</p>
    <% } %>

</body>
</html>
