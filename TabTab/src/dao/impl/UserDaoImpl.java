package dao.impl;
import dao.UserDao;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import entity.User;
import util.JDBCUtil;

/**
 * 用户数据访问层实现类
 * @author ASUS
 * implements UserDao：实现了用户接口
 *
 */
public class UserDaoImpl implements UserDao {

    /**
     * @Override:重写
     * 注册方法
     */
    @Override
    public boolean add(User user) {

        //定义影响行数的变量
        int count = 0;

        try {
            //获取数据库连接对象
            Connection conn = JDBCUtil.getConnectinon();

            //编写sql
            String sql = "insert into user (username,password,gender,email,telephone,"
                    + "introduce,activeCode,role,registTime)  "
                    + "values (?,?,?,?,?,?,?,?,?)";

            //编译sql
            PreparedStatement ps = conn.prepareStatement(sql);

            //设置参数
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getPassword());
            ps.setString(3, user.getGender());
            ps.setString(4, user.getEmail());
            ps.setString(5, user.getTelephone());
            ps.setString(6, user.getIntroduce());
            ps.setString(7, user.getActiveCode());
            ps.setString(8, user.getRole());
            //注册时间的设置
            ps.setDate(9, new Date(new java.util.Date().getTime()));

            //执行修改
            count = ps.executeUpdate();

            //关闭
            JDBCUtil.close();

        } catch (Exception e) {
            e.printStackTrace();//如果有错误，则在控制台抛出错误信息
        }

        //如果count>0,则返回true，否则返回false
        return count > 0 ? true : false;
    }

    /**
     * 登录
     */
    @Override
    public User login(String username, String password) {

        //实例化集合对象
        List<User> list = new ArrayList<User>();

        try {
            //获取数据库的连接
            Connection conn = JDBCUtil.getConnectinon();

            //编写sql
            String sql ="select * from user  where username=? and password=?";

            //编译sql
            PreparedStatement ps = conn.prepareStatement(sql);

            //设置参数
            ps.setString(1, username);
            ps.setString(2, password);

            //执行查询
            ResultSet rs = ps.executeQuery();

            //循环结果集
            while(rs.next()){
                //实例化对象
                User user = new User();

                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setActiveCode(rs.getString("activeCode"));
                user.setEmail(rs.getString("email"));
                user.setGender(rs.getString("gender"));
                user.setId(rs.getInt("id"));
                user.setIntroduce(rs.getString("introduce"));
                user.setRegistTime(rs.getDate("registTime"));
                user.setRole(rs.getString("role"));
                user.setState(rs.getInt("state"));
                user.setTelephone(rs.getString("telephone"));

                //把对象添加到集合中去
                list.add(user);
            }

            //关闭
            JDBCUtil.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        //判断集合中的个数是否大于0，如果大于0，则返回集合中的第一个对象，否则返回空对象
        return list.size()>0 ? list.get(0) : null;
    }










}
