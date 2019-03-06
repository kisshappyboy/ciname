package com.tosit.cinema.service;

import com.tosit.cinema.entity.Cinema;

import java.util.List;

/**
 * 佛祖保佑       永无BUG
 * Created by DELL on 2017/3/8.
 */
public interface CinemaService {
    /**
     * 通过影片编号获取影院列表
     * @param mId 影片编号
     * @return  影院列表
     */
    List<Cinema> findListByMid(Integer mId);
}
