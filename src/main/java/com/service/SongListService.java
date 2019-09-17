package com.service;

import com.pojo.*;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SongListService {
    List<SongListView> getAllSongList();
    SongListView getOneSongList( Integer id);
    List<SongListView> getUserSongList();
    List<SongView> getAllSongs();
    int insertSLCollection(int userid,int id);
    int deleteSLCollection( @Param("userid")int userid, @Param("id")int id);
    List<Integer> selectSLCollection(Integer id);
    int updateSongListCollection(int id);
    List<Song> getSongs(Integer id);
    List<SongListView> getOneTagSong(String tagName);
    List<Type> getTypes();
    List<SongView> getDescSong();
    List<SongView> searchSong(String name);
    int updateSongCount(int s_id);
    SongView getSong(Integer id);
}
