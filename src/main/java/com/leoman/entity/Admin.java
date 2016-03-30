package com.leoman.entity;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by Administrator on 2016/3/14.
 */
@Entity
@Table(name = "tb_admin")
public class Admin extends BaseEntity {

    @Column(name = "user_name")
    private String username;

    private String password;

    private String mobile;

    private String name;

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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
}

