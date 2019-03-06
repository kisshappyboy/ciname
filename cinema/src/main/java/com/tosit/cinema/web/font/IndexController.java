package com.tosit.cinema.web.font;

import com.tosit.cinema.entity.Movie;
import com.tosit.cinema.service.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * 佛祖保佑       永无BUG
 * Created by DELL on 2017/3/6.
 */
@Controller
public class IndexController {

    @Autowired
    private MovieService movieService;
    @RequestMapping("/")
    public String index(ModelMap modelMap){
        List<Movie> movieList = movieService.findHotMovieList(9);
        modelMap.put("movieList",movieList);
        return "index";
    }
}
