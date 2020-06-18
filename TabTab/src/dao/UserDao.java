package dao;
import entity.User;


/**
 * 用户的数据访问层接口
 * 注意：接口中的方法只能定义
 * @author ASUS
 *
 */
public interface UserDao {

    /**
     * 注册
     * @param user
     * @return
     */
    public boolean add(User user);

    /**
     * 登录
     * @param username
     * @param password
     * @return
     */
    public User login(String username,String password);








}
