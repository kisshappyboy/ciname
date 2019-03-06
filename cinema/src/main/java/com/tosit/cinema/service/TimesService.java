package com.tosit.cinema.service;

import com.tosit.cinema.entity.Times;

import java.util.List;

/**
 * 佛祖保佑       永无BUG
 * Created by DELL on 2017/3/8.
 */
public interface TimesService {
    /**
     * 根据影片编号以及影院编号获取场次列表
     * @param mId 影片编号
     * @param cId 影院编号
     * @return 取场次列表
     */
    List<Times> findTimesListByParas(Integer mId, Integer cId);

    /**
     * 根据场次主键获取场次信息
     * @param tId
     * @return
     */
    Times findById(Integer tId);
}
