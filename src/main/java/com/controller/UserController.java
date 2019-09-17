package com.controller;

import com.pojo.*;
import com.service.SingerListService;
import com.service.SongListService;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
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
        List<SingerVo> singerVoList=singerListService.getAllSingerList();
        List<SongListView> songListViews=songListService.getUserSongList();
        List<SongView> songViews1=songListService.getAllSongs();
        request.setAttribute("AllSongList",songViews1);
        request.setAttribute("songListViews",songListViews);
        request.setAttribute("songViews",songViews);
        request.setAttribute("singers",singerVoList);
        return "index";
    }
    @RequestMapping(value = "/user/{id}",method = RequestMethod.GET)
    public String toUser( @PathVariable Integer id, HttpServletRequest request){
        UserVo userVo=userService.findUserById(id);
        request.setAttribute("user",userVo);
        return "user";
    }

    @RequestMapping(value = "/songlist/edit/{id}",method = RequestMethod.GET)
    public String toMySong(@PathVariable Integer id,HttpServletRequest request){
        SongListView songListView=songListService.getOneSongList(id);
        request.setAttribute("songlist",songListView);
        return "mysongedit";
    }
    @RequestMapping("/audio")
    public String toAudio(){
        return "audio";
    }
    @RequestMapping("/main")
    public String toMain(){
        return "main";
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
}
