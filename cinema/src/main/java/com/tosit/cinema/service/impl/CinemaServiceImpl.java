package com.tosit.cinema.service.impl;

import com.tosit.cinema.dao.CinemaDao;
import com.tosit.cinema.entity.Cinema;
import com.tosit.cinema.service.CinemaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 佛祖保佑       永无BUG
 * Created by DELL on 2017/3/8.
 */
@Service
public class CinemaServiceImpl implements CinemaService {

    @Autowired
    private CinemaDao cinemaDao;


    @Override
    public List<Cinema> findListByMid(Integer mId) {
        return cinemaDao.findListByMid(mId);
    }

}
