package test;

import java.sql.Connection;
import java.sql.DriverManager;

public class Datebase {

	public static final String URL = "jdbc:mysql://localhost:3306/order_management";
    public static final String USER = "root";
    public static final String PASSWD = "";

    public static void main(String[] args) {
        try {
            // MariaDB用のドライバークラス名
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection(URL, USER, PASSWD);

            System.out.println("JDBCデータベース接続成功");
            System.out.println("con = " + con);

            con.close();

        } catch (Exception e) {
            System.out.println("JDBCデータベース接続エラー: " + e);
        }
        
    }
}
