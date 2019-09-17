package com.service;

import com.pojo.User;
import com.pojo.UserVo;

public interface UserService {
    int addUser( User user );
    int updateUser( User user );
    UserVo findUserById( int id );
    User findUser( String name );
}
