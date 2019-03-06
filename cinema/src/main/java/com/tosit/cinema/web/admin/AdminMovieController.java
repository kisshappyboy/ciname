package com.tosit.cinema.web.admin;

import com.tosit.cinema.common.page.Pagination4easyUI;
import com.tosit.cinema.entity.CommonType;
import com.tosit.cinema.entity.Movie;
import com.tosit.cinema.service.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * 佛祖保佑       永无BUG
 * Created by DELL on 2017/3/9.
 */
@Controller
@RequestMapping("/")
public class AdminMovieController {

    public static final String MOVIE_IMAGE_PATH = "/upload/movie/";

    @Autowired
    private MovieService movieService;
    @RequestMapping("/movie_list")
    public String movie_list(){
        return "movie_list";
    }

    @RequestMapping("/movie_add")
    public String movie_add(){
        return "movie_add";
    }

    @RequestMapping("/movie_list_data")
    public  @ResponseBody
    Pagination4easyUI<Movie> getPage(Integer page,Integer rows){

        Pagination4easyUI pagination = movieService.page(page,rows);

        return pagination;
    }

    @RequestMapping("/movie_delete/{mId}")
    public String movie_delete(@PathVariable Integer mId, ModelMap modelMap){
        try{
            movieService.deleteById(mId);
        }catch (Exception e){
            modelMap.put("errorMsg",e.getMessage());
            return "error";
        }

        return "redirect:../movie_list";
    }


    @RequestMapping("/movie_edit/{mId}")
    public String movie_edit(@PathVariable Integer mId,ModelMap modelMap){

        Movie movie= movieService.getById(mId);

        modelMap.put("movie",movie);

        return "movie_edit";

    }


    @RequestMapping("/movie_type_data")
    public @ResponseBody
    List<CommonType>  movie_type_data(){
        //模拟电影类型
        List<CommonType> list = new ArrayList<CommonType>();


        list.add(new CommonType(1,"爱情"));
        list.add(new CommonType(2,"动作"));
        list.add(new CommonType(3,"惊悚"));
        list.add(new CommonType(4,"战争"));

        return list;
    }

    @RequestMapping("/movie_update")
    public String movie_update(Movie movie, @RequestParam("poster") MultipartFile poster){

        try {
            poster.transferTo(new File("d:\\"+poster.getOriginalFilename()));
        } catch (IOException e) {
            e.printStackTrace();
        }
        movieService.update(movie);
        return movie_list();
    }

    @RequestMapping("/movie_save")
    public String movie_save(Movie movie, @RequestParam("poster") MultipartFile poster, HttpServletRequest request){
        String realPath = request.getRealPath(MOVIE_IMAGE_PATH);

        String fileName = Long.toString(System.currentTimeMillis());
        String originalFilename=poster.getOriginalFilename();
        try {
//            fileName = new String(originalFilename);
            poster.transferTo(new File(realPath+"/"+fileName));
        } catch (IOException e) {
            e.printStackTrace();
        }
        //设置海报路径（相对）
        movie.setmPic(MOVIE_IMAGE_PATH+fileName);
        movieService.save(movie);
        return movie_list();
    }
}
