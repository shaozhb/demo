package com.example.demo.controller;

import com.alibaba.fastjson.JSONObject;
import com.example.demo.dao.UserMapper;
import com.example.demo.model.User;
import com.github.pagehelper.PageHelper;

import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserMapper userMapper;
    @RequestMapping("/insert")
    public void insert(User user) {
        userMapper.addUser(user);
    }
    @RequestMapping("/index")
    public String index(User user) {
        return "usertest/index";
    }
    @ResponseBody
//    @RequestMapping(value="getUser",produces="html/text;charset=UTF-8")
    @RequestMapping("/getUser")
    public  String queryUserList() {
        List<User> users =userMapper.getUserList();
        JSONObject result = new JSONObject();
        result.put("rows", users);
        return result.toJSONString();
    }
    @ResponseBody
    @RequestMapping(value="pageInfo",produces="html/text;charset=UTF-8")
    public  String pageInfo(@RequestParam int pageNumber,int pageSize,HttpServletResponse response) {
//        response.setContentType("text/json");
//        response.setCharacterEncoding("utf-8");
//        List<User> users =userMapper.getUserList();
//        int total = users.size();
        PageHelper.startPage(pageNumber,pageSize);
        List<User> list=userMapper.getUserList();
        PageInfo pageInfo = new PageInfo(list);
        JSONObject result = new JSONObject();
        result.put("rows",pageInfo.getList());
//        result.put("total",total);
        return result.toJSONString();
    }
    @ResponseBody
    @RequestMapping("/addUser")
    public String addUser(User user) {
        Date date = new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String time = dateFormat.format(date);
        user.setCreated_at(time);
        user.setStates("1");
        userMapper.addUser(user);
        JSONObject result = new JSONObject();
        result.put("state", "success");
        return result.toJSONString();
    }
    @ResponseBody
    @RequestMapping("/updateUser")
    public String updateUser(User user) {
        userMapper.updateUser(user);
        JSONObject result = new JSONObject();
        result.put("state", "success");
        return result.toJSONString();
    }
    @ResponseBody
    @RequestMapping("/deleteUser")
    public String deleteUser(HttpServletRequest request) {
        String[] list=request.getParameterValues("ids");
        for (int i = 0; i < list.length; i++) {
            String id = list[i];
            userMapper.deleteUser(Integer.parseInt(id));
        }
        JSONObject result = new JSONObject();
        result.put("state", "success");
        return result.toJSONString();
    }
}