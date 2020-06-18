package controller.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import biz.UserService;
import biz.impl.UserServiceImpl;
import entity.User;
import util.ActiveCodeUtil;

/**
 * 注册的控制层
 * @author ASUS
 *
 */
@WebServlet(urlPatterns="/register")
public class RegisterController extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //调用业务逻辑层的注册方法

        //实例化业务逻辑层
        UserBiz userBiz = new UserBizImpl();

        //实例化用户对象
        User user = new User();

//		//获取表单中的参数
//		String email = req.getParameter("email");
//		System.out.println("邮箱信息："+email);

        try {
            //把表单中的参数赋值给用户对象
            BeanUtils.populate(user, req.getParameterMap());

            //给用户设置激活码
            user.setActiveCode(ActiveCodeUtil.createActiveCode());

            //设置角色
            user.setRole("普通用户");

            //调用业务逻辑层的注册方法
            boolean flag = userBiz.register(user);

            if (flag) {//如果注册成功

                //req.getContextPath():获取绝对路径
                resp.sendRedirect(req.getContextPath() + "/client/registerSuccess.jsp");
            } else {
                //req.getContextPath():获取绝对路径
                resp.sendRedirect(req.getContextPath() + "/client/register.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}