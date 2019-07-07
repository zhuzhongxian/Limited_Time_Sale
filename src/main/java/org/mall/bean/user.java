package org.mall.bean;

import java.util.List;

public class user {
    private long userId;
    private String userName;
    private String userPwd;
    private List<seckilled> seckilled;

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public List<org.mall.bean.seckilled> getSeckilled() {
        return seckilled;
    }

    public void setSeckilled(List<org.mall.bean.seckilled> seckilled) {
        this.seckilled = seckilled;
    }

    public String getUserPwd() {
        return userPwd;
    }

    public void setUserPwd(String userPwd) {
        this.userPwd = userPwd;
    }

    @Override
    public String toString() {
        return "user{" +
                "userId=" + userId +
                ", userName='" + userName + '\'' +
                ", userPwd='" + userPwd + '\'' +
                ", seckilled=" + seckilled +
                '}';
    }
}
