package com.service;

import com.pojo.SingerVo;
import com.pojo.Song;
import com.pojo.SongView;

import java.util.List;

public interface SingerListService {
    List<SingerVo> getAllSingerList();
    SingerVo getOneSinger( Integer singer_id);
    List<SongView> getSingerSongs( Integer id);
    List<SingerVo> selectSingerBySex(String sex);
    List<SingerVo> searchSinger(String name);
    int insertSinger( SingerVo singerVo );
    int updateSinger( SingerVo singerVo );
    int deleteSinger( SingerVo singerVo );
}
