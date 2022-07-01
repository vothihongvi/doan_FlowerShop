package com.example.flowershop_doan.bean;

import java.io.Serializable;
import java.sql.Timestamp;

public class User implements Serializable {
    private String name, phone, pass;
    private Timestamp createAt;
    private int roleID;

    public User() {
    }
    public User(String name, String phone, String pass, Timestamp createAt, int roleID) {
        this.name = name;
        this.phone = phone;
        this.pass = pass;
        this.createAt = createAt;
        this.roleID = roleID;
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public Timestamp getCreateAt() {
        return createAt;
    }

    public void setCreateAt(Timestamp createAt) {
        this.createAt = createAt;
    }

    public int getRoleID() {
        return roleID;
    }

    public void setRoleID(int roleID) {
        this.roleID = roleID;
    }
}
