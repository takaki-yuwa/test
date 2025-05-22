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
@WebServlet("/sys")
public class product_name extends HttpServlet {

    public static final String URL = "jdbc:mysql://localhost:3306/order_management";
    public static final String USER = "takaki";
    public static final String PASSWD = "1234";
    
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {

        // 商品名を格納するリスト
        List<String> productNameList = new ArrayList<>();
        
        try {
            // MariaDBのドライバをロード
            Class.forName("com.mysql.cj.jdbc.Driver");

            // データベース接続
            Connection con = DriverManager.getConnection(URL, USER, PASSWD);
            
            // ステートメントを作成
            Statement st = con.createStatement();
            
            // SQLクエリを実行
            ResultSet name = st.executeQuery("SELECT product_name ,category_name FROM product");

            // 結果をリストに追加
            while (name.next()) {
                productNameList.add(name.getString("product_name"));
            }

            // リソースをクローズ
            name.close();
            st.close();
            con.close();

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        // 商品名リストをリクエストに設定
        request.setAttribute("product_name", productNameList);

        // 次のJSPにフォワード
        request.getRequestDispatcher("/product_test.jsp").forward(request, response);
    }
}
