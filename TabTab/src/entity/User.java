package entity;

import java.util.Date;

/**
 * 用户实体类
 * @author ASUS
 *
 */
public class User {

    /**属性 **/
    private Integer id;//主键
    private String username;//用户名
    private String password;//密码
    private String gender;//性别
    private String email;//电子邮箱
    private String telephone;//电话号码
    private String introduce;//用户简介
    private String activeCode;//注册激活码
    private Integer state;//用户的状态是否激活    0:未激活     1：已激活
    private String role;//用户角色    管理员用户   普通用户
    private Date registTime;//注册时间
    /**属性 **/

    /**getter,setter方法 **/
    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getGender() {
        return gender;
    }
    public void setGender(String gender) {
        this.gender = gender;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getTelephone() {
        return telephone;
    }
    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }
    public String getIntroduce() {
        return introduce;
    }
    public void setIntroduce(String introduce) {
        this.introduce = introduce;
    }
    public String getActiveCode() {
        return activeCode;
    }
    public void setActiveCode(String activeCode) {
        this.activeCode = activeCode;
    }
    public Integer getState() {
        return state;
    }
    public void setState(Integer state) {
        this.state = state;
    }
    public String getRole() {
        return role;
    }
    public void setRole(String role) {
        this.role = role;
    }
    public Date getRegistTime() {
        return registTime;
    }
    public void setRegistTime(Date registTime) {
        this.registTime = registTime;
    }
    /**getter,setter方法 **/
}
