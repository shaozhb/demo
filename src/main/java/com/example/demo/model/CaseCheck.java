package com.example.demo.model;

import lombok.Data;



/**
 * Created by zhibin.shao on 2018/1/8.
 */

@Data
public class CaseCheck {


    private String checkId;
    private String stepId;
    private String chenckSql;
    private String resultExpect;
    private String resultActual;
    private String createTime;
    private String updateTime;


}
