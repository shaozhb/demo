package com.example.demo.dao;


import com.example.demo.model.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * Created by zhibin.shao on 2018/1/10.
 */
public interface UserMapper {

//    @Insert("insert into user(account,password,name,sex,phone,email,states,created_at)\n" +
//            "    values\n" +
//            "            (#{account},#{password},#{name},#{sex},#{phone},#{email},#{states},#{created_at})")
    int addUser(User user);

    List<User> getUserList();
    Integer updateUser(User user);
    Integer deleteUser(Integer id);
}
