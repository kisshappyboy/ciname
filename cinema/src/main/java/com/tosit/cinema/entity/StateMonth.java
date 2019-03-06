package com.tosit.cinema.entity;

import java.math.BigDecimal;

/**
 * 佛祖保佑       永无BUG
 * Created by DELL on 2017/3/1.
 */
public class StateMonth {

    private String month;
    private BigDecimal money;



    private String[] categories;
    private String[] data;

    public String[] getCategories() {
        return categories;
    }

    public void setCategories(String[] categories) {
        this.categories = categories;
    }

    public String[] getData() {
        return data;
    }

    public void setData(String[] data) {
        this.data = data;
    }

    public String getMonth() {
        return month;
    }

    public void setMonth(String month) {
        this.month = month;
    }

    public BigDecimal getMoney() {
        return money;
    }

    public void setMoney(BigDecimal money) {
        this.money = money;
    }
}
