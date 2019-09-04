package com.service.serviceImpl;

import com.mapper.SingerListMapper;
import com.pojo.SingerVo;
import com.pojo.Song;
import com.pojo.SongView;
import com.service.SingerListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SingerListServiceImpl implements SingerListService {
    @Autowired
    private SingerListMapper singerListMapper;
    @Override
    public List<SingerVo> getAllSingerList() {
        return singerListMapper.getAllSingerList();
    }

    @Override
    public SingerVo getOneSinger( Integer singer_id ) {
        return singerListMapper.getOneSinger(singer_id);
    }

    @Override
    public List<SongView> getSingerSongs( Integer id ) {
        return singerListMapper.getSingerSongs(id);
    }

    @Override
    public List<SingerVo> selectSingerBySex( String sex ) {
        return singerListMapper.selectSingerBySex(sex);
    }

    @Override
    public List<SingerVo> searchSinger( String name ) {
        return singerListMapper.searchSinger(name);
    }

    @Override
    public int insertSinger( SingerVo singerVo ) {
        return singerListMapper.insertSinger(singerVo);
    }

    @Override
    public int updateSinger( SingerVo singerVo ) {
        return 0;
    }

    @Override
    public int deleteSinger( SingerVo singerVo ) {
        return 0;
    }
}
