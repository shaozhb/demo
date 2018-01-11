package com.example.demo.model;

import lombok.Data;

import java.util.Date;
import java.util.Set;

/**
 * Created by zhibin.shao on 2018/1/8.
 */

@Data
public class Case {


    private String caseId;
    private String caseName;
    private String authorName;
    private Date createTime;
    private Date updateTime;


    private Set<Suite> suiteSet;

    public Case(){

    }
    public Case(String caseId, String caseName, String authorName){
        this.caseId=caseId;
        this.caseName=caseName;
        this.authorName=authorName;
    }
}
