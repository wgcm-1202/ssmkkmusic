package com.mapper;

import com.pojo.User;

public interface UserMapper {
    int addUser( User user );
    int updateUser( User user );
    User findUserById( int id );
    User findUser( String name );
}
