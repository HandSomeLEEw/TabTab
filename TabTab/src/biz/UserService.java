package biz;
import  entity.User;
public interface UserService {
    /**
     * 注册方法
     * @param user
     * @return
     */
    public boolean register(User user);


    /**
     * 登录
     * @param username
     * @param password
     * @return
     */
    public User login(String username,String password);
}
