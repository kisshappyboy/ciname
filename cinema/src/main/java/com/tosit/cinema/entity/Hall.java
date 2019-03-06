package com.tosit.cinema.entity;

/**
 * 佛祖保佑       永无BUG
 * Created by DELL on 2017/3/8.
 */
public class Hall {

    private Integer hId;
    private Cinema cinema;
    private String hName;
    private Integer rowNums;//影厅座位行数
    private Integer columnNums;//影厅座位列数
    private Integer count;//总座位数


    public Integer gethId() {
        return hId;
    }

    public void sethId(Integer hId) {
        this.hId = hId;
    }

    public Cinema getCinema() {
        return cinema;
    }

    public void setCinema(Cinema cinema) {
        this.cinema = cinema;
    }

    public String gethName() {
        return hName;
    }

    public void sethName(String hName) {
        this.hName = hName;
    }

    public Integer getRowNums() {
        return rowNums;
    }

    public void setRowNums(Integer rowNums) {
        this.rowNums = rowNums;
    }

    public Integer getColumnNums() {
        return columnNums;
    }

    public void setColumnNums(Integer columnNums) {
        this.columnNums = columnNums;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }


}
