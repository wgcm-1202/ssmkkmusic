package com.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pojo.Msg;
import com.pojo.SingerVo;
import com.service.SingerListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
public class SingerListController {
    @Autowired
    private SingerListService singerListService;
    @RequestMapping("/singer")
    public String getAllSinger (@RequestParam( required = false,value = "pg",
    defaultValue = "1") Integer pg,@RequestParam( required = false,defaultValue = "全部",value = "sex") String sex, HttpServletRequest request ){
        List<SingerVo> singerVoList=new ArrayList<>();
        PageHelper.startPage(pg,5);
        System.out.println(sex);
        if ("全部".equals(sex)) {
            singerVoList = singerListService.getAllSingerList();
        }else {
            singerVoList=singerListService.selectSingerBySex(sex);
        }
        System.out.println(singerVoList);
        PageInfo p = new PageInfo(singerVoList);
        System.out.println(p.getPages());
        /*List<Type> types=songListService.getTypes();*/
        request.setAttribute("pageInfo",p);
       /* request.setAttribute("types",types);*/
        /*request.setAttribute("slists",songListViews);*/
        return "singerlist";
    }
}
