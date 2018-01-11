package com.example.demo.model;

import lombok.Data;

import java.util.HashSet;
import java.util.Set;

/**
 * Created by zhibin.shao on 2018/1/8.
 */

@Data
public class Suite {


    private String suiteId;
    private String suiteName;


    public Set<Case> caseSet;


    public Suite(){
        super();
    }

    public Suite(String suiteId,String suiteName){
        super();
        this.suiteId=suiteId;
        this.suiteName=suiteName;
        this.caseSet =new HashSet<>();
    }
}
