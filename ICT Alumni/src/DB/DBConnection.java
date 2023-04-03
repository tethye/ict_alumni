package DB;

import com.mysql.jdbc.PreparedStatement;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

    private Connection connection;
    private PreparedStatement preparedStatement;

    private static final String URL = "jdbc:mysql://127.0.0.1/ict_alumni?useSSL=false&allowPublicKeyRetrieval=true";
    private static final String USER = "root";
    private static final String PASSWORD = "Tanver@123";

    public static Connection getConn() {
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return con;
    }


    //    private static Connection con;
//
//    public static Connection getConn() {
//        try {
//            Class.forName("com.mysql.jdbc.Driver");
//            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ict_alumni",
//                    "root", "Tanver@123");
//            System.err.println("Tanver");
//
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//
//        return con;
//
//    }


}
