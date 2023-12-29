package com.example.bean;

import java.util.Date;

public class User {
    private int id;
    private int status;
    private int idAdmin;
    private String nickname;
    private String username;
    private String password;
    private String sex;
    private String face;
    private String phone;
    private String email;
    private String signature;
    private Date birthday;

    public User() {
    }
    public User(int id, int status, int idAdmin, String nickname, String username, String password, String sex, String face, String phone, String email, String singature, Date birthday) {
        this.id = id;
        this.status = status;
        this.idAdmin = idAdmin;
        this.nickname = nickname;
        this.username = username;
        this.password = password;
        this.sex = sex;
        this.face = face;
        this.phone = phone;
        this.email = email;
        this.signature = singature;
        this.birthday = birthday;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getIdAdmin() {
        return idAdmin;
    }

    public void setIdAdmin(int idAdmin) {
        this.idAdmin = idAdmin;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
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

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getFace() {
        return face;
    }

    public void setFace(String face) {
        this.face = face;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSignature() {
        return signature;
    }

    public void setSignature(String signature) {
        this.signature = signature;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", status=" + status +
                ", idAdmin=" + idAdmin +
                ", nickname='" + nickname + '\'' +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", sex='" + sex + '\'' +
                ", face='" + face + '\'' +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", signature='" + signature + '\'' +
                ", birthday=" + birthday +
                '}';
    }
}
