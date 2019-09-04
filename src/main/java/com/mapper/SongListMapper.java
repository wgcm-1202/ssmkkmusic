package com.mapper;

import com.pojo.Song;
import com.pojo.SongListView;
import com.pojo.SongView;
import com.pojo.Type;

import java.util.List;

public interface SongListMapper {
    List<SongListView> getAllSongList();
    SongListView getOneSongList( Integer slid);
    List<Song> getSongs(Integer id);
    List<SongListView> getOneTypeSl(String typeName);
    List<SongListView> getOneTagSong(String typeName);
    List<SongView> getDescSong();
    List<SongView> searchSong(String name);
    int updateSongCount(int s_id);
    List<Type> getTypes();
    int insertSongList( SongListView songListView );
    int updateSongList( SongListView songListView );
    int deleteSongList( SongListView songListView );
}
