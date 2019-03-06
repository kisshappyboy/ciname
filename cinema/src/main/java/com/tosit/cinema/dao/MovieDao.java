package com.tosit.cinema.dao;

import com.tosit.cinema.entity.Movie;

import java.util.List;

/**
 * 佛祖保佑       永无BUG
 * Created by DELL on 2017/3/7.
 */
public interface MovieDao {
    /**
     * 查询热映电影列表
     * @param i 列表数量
     * @return
     */
    List<Movie> findHotMovieList(int i);

    /**
     * 查询所有
     * @return
     */
    List<Movie> findAll();

    /**
     * 获取总数
     *
     * @return
     */
    Integer getTotalCount();

    /**
     * 分页查询
     * @param firstResult
     * @param pageSize
     * @return
     */
    List<Movie> findPage(int firstResult, int pageSize);

    void deleteById(Integer mId);

    Movie getById(Integer mId);

    void update(Movie movie);

    void save(Movie movie);
}
