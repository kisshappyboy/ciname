package com.tosit.cinema.dao;

import com.tosit.cinema.entity.Cinema;

import java.util.List;

/**
 * 佛祖保佑       永无BUG
 * Created by DELL on 2017/3/8.
 */
public interface CinemaDao {
    List<Cinema> findListByMid(Integer mId);
}
