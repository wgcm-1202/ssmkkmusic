package com.mapper;

import com.pojo.Song;
import com.pojo.SongListView;
import com.pojo.SongView;
import com.pojo.Type;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SongListMapper {
    List<SongListView> getAllSongList();
    List<SongListView> getUserSongList();
    SongListView getOneSongList( Integer id);
    List<Song> getSongs(Integer id);
    List<SongView> getAllSongs();
    List<SongListView> getOneTypeSl(String typeName);
    List<SongListView> getOneTagSong(String typeName);
    List<SongView> getDescSong();
    List<SongView> searchSong(String name);
    int updateSongListCollection(int id);
    int insertSLCollection( @Param("userid")int userid, @Param("id")int id);
    int deleteSLCollection( @Param("userid")int userid, @Param("id")int id);
    List<Integer> selectSLCollection(Integer id);
    int updateSongCount(int s_id);
    List<Type> getTypes();
    SongView getSong(Integer id);
    int insertSongList( SongListView songListView );
    int updateSongList( SongListView songListView );
    int deleteSongList( SongListView songListView );
}
