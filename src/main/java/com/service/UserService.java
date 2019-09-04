package com.service;

import com.pojo.User;

public interface UserService {
    int addUser( User user );
    int updateUser( User user );
    User findUserById( int id );
    User findUser( String name );
}
