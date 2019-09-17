package com.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pojo.SingerVo;
import com.pojo.SongView;
import com.service.SingerListService;
import com.service.SongListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class SearchController {
    @Autowired
    private SingerListService singerListService;
    @Autowired
    private SongListService songListService;
    @RequestMapping("/search")
    public String getSearch(@RequestParam( required = false,value = "pg",
            defaultValue = "1") Integer pg, String name, HttpServletRequest request ){
        System.out.println(name);
        PageHelper.startPage(pg,5);
         List<SongView> songViews=songListService.searchSong(name);
         if (songViews.size()>0){
             System.out.println(songViews);
             PageInfo p=new PageInfo(songViews);
             request.getSession().setAttribute("page",p);
         }else {
             List<SongView> singer=singerListService.searchSinger(name);
             System.out.println(singer);
             PageInfo p=new PageInfo(singer);
             request.getSession().setAttribute("page",p);
         }
         return "search";
    }
    @RequestMapping("/search1")
    public String toSearch(){
        return "search";
    }
}
