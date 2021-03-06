package com.mapper;

import com.pojo.SingerVo;
import com.pojo.Song;
import com.pojo.SongListView;
import com.pojo.SongView;

import java.util.List;

public interface SingerListMapper {
    List<SingerVo> getAllSingerList();
    SingerVo getOneSinger( Integer singer_id);
    List<SongView> getSingerSongs( Integer id);
    List<SingerVo> selectSingerBySex(String sex);
    List<SongView> searchSinger(String name);
    List<SingerVo> searchSingers(String name);
    int insertSinger( SingerVo singerVo );
    int updateSinger( SingerVo singerVo );
    int deleteSinger( SingerVo singerVo );
}
