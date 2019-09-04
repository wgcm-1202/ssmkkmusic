package com.controller;

import com.pojo.*;
import com.service.SingerListService;
import com.service.SongListService;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class UserController {
    @Autowired
    private UserService userService;
    @Autowired
    private SongListService songListService;
    @Autowired
    private SingerListService singerListService;
   /* @RequestMapping("/")
    public String index(){
        return  "index";
    }*/
    @RequestMapping("/")
    public String UserMsg( HttpServletRequest request ){
        List<SongView> songViews=songListService.getDescSong();
        System.out.println(songViews);
        request.setAttribute("songViews",songViews);
        return "index";
    }
    @RequestMapping("/user")
    public String toUser(){
        return "user";
    }
    @RequestMapping("/songlist")
    public String toSongList(){
        return "songlist";
    }
    /*@RequestMapping("/singer")
    public String toSinger(){
        return "singerlist";
    }*/
    @RequestMapping("/ranking")
    public String toRanklist(){
        return "rankinglist";
    }
    @RequestMapping("/add")
    @ResponseBody
    public Msg saveUser( User user, HttpServletRequest request) {
        User u=userService.findUser(user.getName());
        if (u!=null) {
            System.out.println(user);
            if (userService.addUser(user) > 0) {
                request.getSession().setAttribute("user", user);
                return Msg.success();
            }
        }
            return Msg.fail();
    }
    @RequestMapping("/login")
    @ResponseBody
    public Msg login( User user, HttpServletRequest request ){
        User user1=userService.findUser(user.getName());
        System.out.println(user);
        System.out.println(user1);
        if (user.getPassword()!=null && user.getPassword().equals(user.getPassword())) {
            request.getSession().setAttribute("user",user1);
            return Msg.success().add("user",user1);
        }else {
            return Msg.fail();
        }
    }
    @RequestMapping("/addcount")
    public String UpdateCount(
            @RequestParam Integer sid, HttpServletRequest request){
        songListService.updateSongCount(sid);

        return "redirect:/";
    }
    @RequestMapping("/search")
    public String getSearch(String name,HttpServletRequest request){
        List<SingerVo> singerVos=singerListService.searchSinger(name);
        if (singerVos!=null){
            request.setAttribute("searchinfo",singerVos);
            return "search";
        }else {
            List<SongView> songViews=songListService.searchSong(name);
            request.setAttribute("searchinfo",songViews);
            return "search";
        }
    }
}
