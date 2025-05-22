<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>トッピング一覧</title>
</head>
<body>
    <h1>トッピング一覧</h1>
    <% 
        List<String> toppingNameList = (List<String>) request.getAttribute("topping_name");
        if (toppingNameList != null && !toppingNameList.isEmpty()) {
    %>

        <p>テーブルに保存されている商品名一覧</p>
        <% for(String toppingName : toppingNameList) { %>
            <div><%= toppingName %></div>
        <% } %>
    <% 
        } else { 
    %>
        <p>トッピングは登録されていません。</p>
    <% } %>

</body>
</html>
