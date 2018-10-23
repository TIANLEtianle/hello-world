package util;


import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnector {

    public static Connection getConnection() {
        //String database = "test";
        String user = "root";
        String psw = "LHS19970420";
        String url="jdbc:mysql://localhost/test?useSSL=FALSE&serverTimezone=UTC";
        //String url = "jdbc:mysql://localhost/" + database+"?useUnicode=true&characterEncoding=utf-8";	//String url = "jdbc:sqlserver://172.26.53.255:1433;DatabaseName=" + database;
        Connection conn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            conn = DriverManager.getConnection(url,user,psw);
            return conn;
        } catch (Exception e) {
            System.out.println("数据库连接错！");
            e.printStackTrace();
        }
        return null;
    }
}

