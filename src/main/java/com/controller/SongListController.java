package com.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pojo.Msg;
import com.pojo.SongListView;

import com.pojo.Type;
import com.service.SongListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
public class SongListController {
    @Autowired
    private SongListService songListService;
    @RequestMapping("/slist")
    public String getAllSongList( @RequestParam( required = false,value = "pg",
            defaultValue = "1") Integer pg,@RequestParam( required = false,defaultValue = "全部",value = "typeName") String typeName, HttpServletRequest request ){
        List<SongListView> songListViews=new ArrayList<>();
        PageHelper.startPage(pg,5);
        if ("全部".equals(typeName)) {
            songListViews = songListService.getAllSongList();
        }else {
            songListViews=songListService.getOneTagSong(typeName);
        }
            System.out.println(songListViews);
            PageInfo p = new PageInfo(songListViews);
        System.out.println(p.getPages());
        List<Type> types=songListService.getTypes();
        request.setAttribute("pageInfo",p);
        request.setAttribute("types",types);
        /*request.setAttribute("slists",songListViews);*/
        return "songlist";
    }
    @RequestMapping(value = "/slone/{id}",method = RequestMethod.GET)
    public String getOneSongList( @PathVariable Integer id, Model model ){
        SongListView oneSongListView =songListService.getOneSongList(id);
        Integer n=songListService.updateSongListCollection(id);
        List<Integer> integers=songListService.selectSLCollection(id);
        oneSongListView.setCollection(n);
        model.addAttribute("integers",integers);
        model.addAttribute("list", oneSongListView);
        return "/slone";
    }
    @RequestMapping("/Collect")
    @ResponseBody
    public int collectOneSongList( Integer id,Integer userid, Model model ){
        System.out.println(id+","+userid);
        SongListView oneSongListView =songListService.getOneSongList(id);
        Integer result;
        List<Integer> integers=songListService.selectSLCollection(id);
        if (integers.contains(userid)){
             result=songListService.deleteSLCollection(userid,id);
        }else {
             result=songListService.insertSLCollection(userid,id);
        }
        Integer n=songListService.updateSongListCollection(id);
        oneSongListView.setCollection(n);
        System.out.println(oneSongListView);
        model.addAttribute("list", oneSongListView);
        model.addAttribute("integers",integers);
        return result;
    }
}
