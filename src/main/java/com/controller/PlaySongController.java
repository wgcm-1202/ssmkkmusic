package com.controller;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.pojo.JsonUtils;
import com.pojo.PlayerSong;
import com.pojo.Song;
import com.pojo.SongView;
import com.service.SingerListService;
import com.service.SongListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;
@Controller
public class PlaySongController {
    @Autowired
    private SingerListService singerListService;
    @Autowired
    private SongListService songListService;
    @RequestMapping("/playSongListFirst")
    @ResponseBody
    public List playSongListFirst( HttpServletRequest request){
        List<PlayerSong> playSongList = (List<PlayerSong>) request.getSession().getAttribute("playSongList");
        request.getSession().setAttribute("playerSong",null);
        return playSongList;
    }

    @RequestMapping("/playSongList")
    @ResponseBody
    public List playSongList(HttpServletRequest request) {
        PlayerSong playerSong = (PlayerSong) request.getSession().getAttribute("playerSong");
        List<PlayerSong> playSong = new ArrayList<>();
        if (playerSong == null) {
            return playSong;
        } else {
            playSong.add(playerSong);
            request.getSession().setAttribute("playerSong", null);
            return playSong;
        }
    }
    @RequestMapping("/playSong")
    public String playSong(Integer sid,HttpServletRequest request){
        System.out.println(sid);
        SongView songView=songListService.getSong(sid);
        songListService.updateSongCount(sid);
        System.out.println(songView);
        PlayerSong playerSong=new PlayerSong();
        playerSong.setName(songView.getSname());
        playerSong.setSinger(songView.getSinger().getSinger_name());
        playerSong.setAlbum(songView.getCd().getCDname());
        playerSong.setTime(songView.getStime());
        playerSong.setLink_url(songView.getSongurl());
        playerSong.setPicture(songView.getCd().getCover());
        playerSong.setLink_lrc(songView.getCyricurl());
        List<PlayerSong> playerSongs=new ArrayList<>();
        String path = "F:\\IDEA\\ssmkkmusic\\src\\main\\webapp\\source\\musicList.json";
        String jsonStr = JsonUtils.readJsonFile(path);
        JSONArray jsonArray = JSONArray.parseArray(jsonStr);
        playerSongs=(List<PlayerSong>)request.getSession().getAttribute("playSongList");
        System.out.println(playerSongs);
        if (playerSongs!=null){
            System.out.println(playerSongs.contains(playerSong));
            if (!playerSongs.contains(playerSong)){
                playerSongs.add(playerSong);
                request.getSession().setAttribute("playerSong",playerSong);
                jsonArray.add(playerSong);
                //将json转换为json字符串
                String newJsonString = jsonArray.toString();
                JsonUtils.writeJsonFile(newJsonString, path);
            }
        }
        else {
            playerSongs = new ArrayList<>();
            playerSongs.add(playerSong);
            request.getSession().setAttribute("playerSong",playerSong);
            jsonArray.add(playerSong);
            //将json转换为json字符串
            String newJsonString = jsonArray.toString();
            JsonUtils.writeJsonFile(newJsonString, path);
        }
        System.out.println("playsongList:"+playerSongs);
        request.getSession().setAttribute("playSongList",playerSongs);
        return "main";
    }
    @RequestMapping("/deleteSong")
    @ResponseBody
    public String deleteSong(Integer id,HttpServletRequest request){
        System.out.println(id);
        List<PlayerSong> playSongList = (List<PlayerSong>) request.getSession().getAttribute("playSongList");;
        System.out.println(playSongList);
        playSongList.remove(id-1);
        System.out.println(playSongList);
        request.getSession().setAttribute("playSongList",playSongList);
        return "success";
    }
}
