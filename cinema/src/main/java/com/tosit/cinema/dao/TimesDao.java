package com.tosit.cinema.dao;

import com.tosit.cinema.entity.Times;

import java.util.List;
import java.util.Map;

/**
 * 佛祖保佑       永无BUG
 * Created by DELL on 2017/3/8.
 */
public interface TimesDao {
    /**
     * 获取场次列表
     * @param parasMap 参数map
     * @return 场次列表
     */
    List<Times> findTimesByParas(Map<String, Object> parasMap);


    /**
     * 根据场次主键获取场次信息
     * @param tId
     * @return
     */
    Times findById(Integer tId);

    /**
     * 根据场次编号更新已买座位
     * @param integer
     * @param lockedSeats
     */
    void updateLockedSeatsByTid(Integer integer, String lockedSeats);
}
