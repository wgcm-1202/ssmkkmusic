package com.service;

import com.pojo.*;

import java.util.List;

public interface SongListService {
    List<SongListView> getAllSongList();
    SongListView getOneSongList( Integer slid);
    List<Song> getSongs(Integer id);
    List<SongListView> getOneTagSong(String tagName);
    List<Type> getTypes();
    List<SongView> getDescSong();
    List<SongView> searchSong(String name);
    int updateSongCount(int s_id);
}
