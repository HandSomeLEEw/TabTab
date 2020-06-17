package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * JDBC工具类
 * @author ASUS
 *
 */
public class JDBCUtil {

    //static：静态     final：最终
    static final String url = "jdbc:mysql://localhost:3306/itcaststore";//连接数据库的url
    static final String user = "root";//连接数据库的用户名
    static final String password = "root";//连接数据库的密码

    static Connection conn = null;//数据库连接对象
    static PreparedStatement  ps = null;//预编译对象
    static ResultSet rs = null;//结果集对象

    /**
     * 静态代码块
     */
    static{
        try {
            //加载驱动
            Class.forName("com.mysql.jdbc.Driver");

        } catch (Exception e) {
            e.printStackTrace();//如果有错则在控制台输出错误信息
        }
    }

    /**
     * 获取数据库连接对象
     * @return
     */
    public static Connection getConnectinon(){
        try {

            //DriverManager:驱动管理
            conn = DriverManager.getConnection(url, user, password);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }

    /**
     * 关闭
     */
    public static void close(){
        try {
            //判断结果集对象是否为空
            if(rs != null){
                rs.close();//关闭结果集对象
            }

            //判断预编译对象是否为空
            if(ps != null){
                ps.close();
            }

            //判断连接对象是否为空
            if(conn != null){
                conn.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
