package com.example.demo.model;

import lombok.Data;


import java.util.Date;

/**
 * Created by zhibin.shao on 2018/1/8.
 */

@Data
public class CaseStep {


    private String stepId;
    private String caseId;
    private String stepName;
    private String keywordMethod;
    private String mode;
    private String locator;
    private String keywordInput;
    private String condition;
    private String result;
    private Date createTime;
    private Date updateTime;


}
