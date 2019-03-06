package com.tosit.cinema.service;

import com.tosit.cinema.common.page.Pagination4easyUI;
import com.tosit.cinema.entity.Movie;

import java.util.List;

/**
 * 佛祖保佑       永无BUG
 * Created by DELL on 2017/3/7.
 */
public interface MovieService {
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
    Pagination4easyUI findAll();

    Pagination4easyUI page(Integer page, Integer rows);

    /**
     * 根据主键删除影片
     * @param mId
     */
    void deleteById(Integer mId);

    /**
     * 根据主键查询影片
     * @return
     * @param mId
     */
    Movie getById(Integer mId);

    /**
     * 根据影片信息
     * @param movie
     */
    void update(Movie movie);

    /**
     * 保存影片
     * @param movie
     */
    void save(Movie movie);
}
