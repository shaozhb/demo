package com.example.demo.model;

import lombok.Data;

/**
 * Created by zhibin.shao on 2018/1/10.
 */

@Data
public class User {

    private Integer id;
    private String account;
    private String password;
    private String name;
    private String sex;
    private String phone;
    private String email;
    private String states;
    private String created_at;

}
