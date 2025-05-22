package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import servlet.product_list;

public class ProductDAO {

    public List<product_list> getAllProductNames() {
        List<product_list> productNameList = new ArrayList<>();

        try (Connection con = DBUtil.getConnection();
             Statement st = con.createStatement();
             ResultSet rs = st.executeQuery("SELECT product_name, product_price, category_name FROM product")) {

            while (rs.next()) {
                String name = rs.getString("product_name");
                int price = rs.getInt("product_price");
                String category = rs.getString("category_name");
                productNameList.add(new product_list(name, price, category)); // ← 修正済み
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return productNameList;
    }
}
