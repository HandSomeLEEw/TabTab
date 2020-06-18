package biz.impl;

import biz.UserService;
import  dao.UserDao;
import  dao.impl.UserDaoImpl;
import  entity.User;
public class UserServiceImpl implements UserService {
    //实例化数据访问层
    UserDao ud = new UserDaoImpl();

    @Override
    public boolean register(User user) {

        //调用数据访问层的注册方法
        return ud.add(user);
    }

    @Override
    public User login(String username, String password) {

        //调用数据访问层的登录方法
        return ud.login(username, password);
    }
}
