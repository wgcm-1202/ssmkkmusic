package com.service.serviceImpl;

import com.mapper.UserMapper;
import com.pojo.User;
import com.pojo.UserVo;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;
    @Override
    public int addUser( User user ) {
        return userMapper.addUser(user);
    }

    @Override
    public int updateUser( User user ) {
        return 0;
    }

    @Override
    public UserVo findUserById( int id ) {
        return userMapper.findUserById(id);
    }

    @Override
    public User findUser( String name ) {
        return userMapper.findUser(name);
    }
}
