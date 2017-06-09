package com.login.bean;

public class RegisterBean {
        String email;
    String username;
    String password;
    public String getemail() {
        return email;
    }
    public void setemail(String email) {
        this.email = email;
    }
    public String getusername() {
        return username;
    }
    public void setusername(String username) {
        this.username = username;
    }
    public String getpassword() {
        return password;
    }
    public void setpassword(String password) {
        this.password = password;
    }
   
    public RegisterBean(String email, String username, String password) {
        super();
        this.email = email;
        this.username = username;
        this.password = password;
    }
    public RegisterBean() {
        // TODO Auto-generated constructor stub
    }

}