package com.mzf.service;

import com.mzf.entity.User;

import java.util.List;

public interface UserService {

    /*增加一个用户*/
    int addUserus(User user);

    /*删除一个用户*/
    int deleteUserus(String uphone);

    /*更新一个用户*/
    int updateUserus(User user);

    /*根据id查询一个用户*/
    User selectUserByIdus(int id);

    /*查询所有用户*/
    List<User> selectAllUserus();

/*根据手机号查询一个用户*/
    User selectuserByPh(String uphone);

}
