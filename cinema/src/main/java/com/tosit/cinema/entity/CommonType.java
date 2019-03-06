package com.tosit.cinema.entity;

/**
 * 通用的类型实体（目前用于easyui 下拉框）
 * 佛祖保佑       永无BUG
 * Created by DELL on 2017/3/10.
 */
public class CommonType {

    private Integer id;
    private String text;

    public CommonType(Integer id, String text) {
        this.id = id;
        this.text = text;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }
}
