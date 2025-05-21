package test;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/test")
public class forwardtest extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {

        // テスト用メッセージをリクエストに設定
        request.setAttribute("message", "フォワード成功！");

        // forwardtest.jsp にフォワード
        request.getRequestDispatcher("/forwardtest.jsp").forward(request, response);
    }
}
