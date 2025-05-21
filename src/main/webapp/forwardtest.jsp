<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>フォワードテスト</title>
</head>
<body>
    <h1>フォワードテストページ</h1>

    <p>
        <% 
            String msg = (String) request.getAttribute("message");
            if (msg != null) {
                out.print(msg);
            } else {
                out.print("フォワードされていません。");
            }
        %>
    </p>
</body>
</html>
