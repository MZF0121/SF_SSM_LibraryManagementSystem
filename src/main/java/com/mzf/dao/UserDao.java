package com.mzf.dao;

import com.mzf.entity.User;

import java.util.List;

public interface UserDao {
    /*增加一个用户*/
int addUser(User user);

    /*删除一个用户*/
int deleteUser(String uphone);

    /*更新一个用户*/
int updateUser(User user);

    /*根据id查询一个用户*/
User selectUserById(int id);

/*根据手机号查询用户*/
    User selectuserByPh(String uphone);

    /*查询所有用户*/
    List<User> selectAllUser();
}
