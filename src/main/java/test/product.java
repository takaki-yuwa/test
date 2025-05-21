package test;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/product")
public class product extends HttpServlet {

    public static final String URL = "jdbc:mysql://localhost:3306/order_management";
    public static final String USER = "takaki";
    public static final String PASSWD = "1234";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {

        List<Product1> productList = new ArrayList<>();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(URL, USER, PASSWD);
            Statement st = con.createStatement();

            // カテゴリーが「お好み焼き」の商品だけを取得
            String sql = "SELECT product_name, product_price FROM product WHERE category_name = 'お好み焼き'";
            ResultSet rs = st.executeQuery(sql);

            while (rs.next()) {
                String name = rs.getString("product_name");
                int price = rs.getInt("product_price");
                productList.add(new Product1(name, price));
            }

            rs.close();
            st.close();
            con.close();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        request.setAttribute("product_list", productList);
        request.getRequestDispatcher("/product.jsp").forward(request, response);
    }
}
