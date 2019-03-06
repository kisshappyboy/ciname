package com.tosit.cinema.entity;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 佛祖保佑       永无BUG
 * Created by DELL on 2017/3/8.
 */
public class Times {

    private Integer tId;
    private Hall hall;//所属影厅
    private Movie movie;//放映影片
    private Date begin;//放映时间
    private Date end;//放映结束时间
    private BigDecimal price;//票价
    private String version;//3d 3dimax
    private String lockedSeats;//表示已经锁住的座位
    private String noneSeats;//表示不能显示的座位

    //只为显示
    private String sBegin;

    public Integer gettId() {
        return tId;
    }

    public void settId(Integer tId) {
        this.tId = tId;
    }

    public Hall getHall() {
        return hall;
    }

    public void setHall(Hall hall) {
        this.hall = hall;
    }

    public Movie getMovie() {
        return movie;
    }

    public void setMovie(Movie movie) {
        this.movie = movie;
    }

    public Date getBegin() {
        return begin;
    }

    public void setBegin(Date begin) {
        this.begin = begin;
    }

    public Date getEnd() {
        return end;
    }

    public void setEnd(Date end) {
        this.end = end;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version;
    }
    public String getLockedSeats() {
        return lockedSeats;
    }

    public void setLockedSeats(String lockedSeats) {
        this.lockedSeats = lockedSeats;
    }

    public String getNoneSeats() {
        return noneSeats;
    }

    public void setNoneSeats(String noneSeats) {
        this.noneSeats = noneSeats;
    }
    public String getsBegin() {
        SimpleDateFormat fmt = new SimpleDateFormat("yyyy-MM-dd hh:mm");
        sBegin = fmt.format(begin);
        return sBegin;
    }

    public void setsBegin(String sBegin) {
        this.sBegin = sBegin;
    }
}
