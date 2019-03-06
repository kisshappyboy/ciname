package com.tosit.cinema.service.impl;

import com.tosit.cinema.dao.TimesDao;
import com.tosit.cinema.entity.Times;
import com.tosit.cinema.service.TimesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 佛祖保佑       永无BUG
 * Created by DELL on 2017/3/8.
 */
@Service
public class TimesServiceImpl implements TimesService {

    @Autowired
    private TimesDao dao ;

    @Override
    public List<Times> findTimesListByParas(Integer mId, Integer cId) {
        Map<String,Object> parasMap = new HashMap<String, Object>();
        parasMap.put("mId",mId);
        parasMap.put("cId",cId);
        return dao.findTimesByParas(parasMap);
    }

    @Override
    public Times findById(Integer tId) {
        return dao.findById(tId);
    }
}
