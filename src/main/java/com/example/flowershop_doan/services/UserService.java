package com.example.flowershop_doan.services;

import com.example.flowershop_doan.bean.User;
import com.example.flowershop_doan.dao.UserDao;

public class UserService {
    private  static UserService instance;

    public static UserService getInstance() {
        if(instance == null)
            instance = new UserService();
        return instance;
    }

    public User signup(String name, String phone, String pass){
        return UserDao.getInstance().signup(name, phone, pass);
    }
    public User checkLogin(String phone, String pass){
return UserDao.getInstance().checkLogin(phone, pass);
    }
    public User checkLoginAdmin(String phone, String pass){
        return UserDao.getInstance().checkLoginAdmin(phone, pass);
    }



}
