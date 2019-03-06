package com.tosit.cinema.service.impl;

import com.tosit.cinema.common.page.Pagination;
import com.tosit.cinema.common.page.Pagination4easyUI;
import com.tosit.cinema.dao.MovieDao;
import com.tosit.cinema.entity.Movie;
import com.tosit.cinema.service.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 佛祖保佑       永无BUG
 * Created by DELL on 2017/3/7.
 */
@Service
public class MovieServiceImpl implements MovieService {

    @Autowired
    private MovieDao dao;

    @Override
    public List<Movie> findHotMovieList(int i) {
        return dao.findHotMovieList(i);
    }

    @Override
    public Pagination4easyUI findAll() {
        List<Movie> list = dao.findAll();
        Pagination4easyUI pagination = new Pagination4easyUI();
        pagination.setTotal(list.size());
        pagination.setRows(list);
        return pagination;
    }

    @Override
    public Pagination4easyUI page(Integer page, Integer rows) {
        Pagination4easyUI result = new Pagination4easyUI();

        Integer totalCount = dao.getTotalCount();
        Pagination pagination = new Pagination(page,rows,totalCount);

        List<Movie> list = dao.findPage(pagination.getFirstResult()+1,pagination.getFirstResult()+pagination.getPageSize());

        result.setRows(list);
        result.setTotal(totalCount);
        return result;
    }

    @Override
    public void deleteById(Integer mId) {
        dao.deleteById(mId);
    }

    @Override
    public Movie getById(Integer mId) {
        return dao.getById(mId);
    }

    @Override
    public void update(Movie movie) {
        dao.update(movie);
    }

    @Override
    public void save(Movie movie) {
        dao.save(movie);
    }
}
