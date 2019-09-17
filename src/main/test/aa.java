import com.mapper.SingerListMapper;
import com.mapper.SongListMapper;
import com.mapper.UserMapper;
import com.pojo.SongList;
import com.pojo.SongListView;
import com.pojo.SongView;
import com.pojo.UserVo;
import com.service.SongListService;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = {"classpath:applicationContext-dao.xml"})

public class aa {
    @Autowired
    private SqlSessionFactory sessionFactory;

    @Test
    public void aa(){
        SqlSession sqlSession = sessionFactory.openSession();
        SingerListMapper singerListMapper=sqlSession.getMapper(SingerListMapper.class);
        SongListMapper mapper = sqlSession.getMapper(SongListMapper.class);
        UserMapper userMapper=sqlSession.getMapper(UserMapper.class);
       /* UserVo userVo=userMapper.findUserById(1);
        System.out.println(userVo);*/
       /* List<SongView> songLists=mapper.getAllSongs();
        System.out.println(songLists);*/
       /*int result=mapper.insertSLCollection(1,5);
       SongListView songListView=mapper.getOneSongList(5);
       Integer n=mapper.updateSongListCollection(5);
        System.out.println(result);
       songListView.setCollection(n);
        System.out.println(songListView);*/
       UserVo userVo=userMapper.findUserById(1);
        System.out.println(userVo);
       /* List<SongView> songViews =mapper.searchSong("你");
        System.out.println(songViews);
        List<SongView> songViews1= singerListMapper.searchSinger("薛之谦");
        System.out.println(songViews1);*/
    }
}
