package com.service.serviceImpl;

import com.mapper.SongListMapper;
import com.pojo.*;
import com.service.SongListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class SongListServiceImpl implements SongListService {
    @Autowired
    private SongListMapper songListMapper;
    @Override
    public List<SongListView> getAllSongList() {
        return songListMapper.getAllSongList();
    }

    @Override
    public SongListView getOneSongList( Integer slid) {
        return songListMapper.getOneSongList(slid);
    }

    @Override
    public List<Song> getSongs( Integer id ) {
        return songListMapper.getSongs(id);
    }

    @Override
    public List<SongListView> getOneTagSong( String tagname ) {
        return songListMapper.getOneTagSong(tagname);
    }

    @Override
    public List<Type> getTypes() {
        return songListMapper.getTypes();
    }

    @Override
    public List<SongView> getDescSong() {
        return songListMapper.getDescSong();
    }

    @Override
    public List<SongView> searchSong( String name ) {
        return songListMapper.searchSong(name);
    }

    @Override
    public int updateSongCount( int s_id ) {
        return songListMapper.updateSongCount(s_id);
    }
}
