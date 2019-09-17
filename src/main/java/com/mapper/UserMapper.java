package com.mapper;

import com.pojo.User;
import com.pojo.UserVo;

public interface UserMapper {
    int addUser( User user );
    int updateUser( User user );
    UserVo findUserById( int id );
    User findUser( String name );
}
