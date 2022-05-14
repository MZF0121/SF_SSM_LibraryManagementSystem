package com.mzf.service.Impl;

import com.mzf.dao.UserDao;
import com.mzf.entity.User;
import com.mzf.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class UserServiceImpl implements UserService {
   @Autowired
    @Qualifier("userDao")
    private UserDao userDao;

    public UserDao getUserDao() {
        return userDao;
    }

    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    @Override
    public int addUserus(User user) {
        return userDao.addUser(user);
    }

    @Override
    public int deleteUserus(String uphone) {
        return userDao.deleteUser(uphone);
    }

    @Override
    public int updateUserus(User user) {
        return userDao.updateUser(user);
    }

    @Override
    public User selectUserByIdus(int id) {
        return userDao.selectUserById(id);
    }

    @Override
    public List<User> selectAllUserus() {
        return userDao.selectAllUser();
    }

    @Override
    public User selectuserByPh(String uphone) {
        return userDao.selectuserByPh(uphone);
    }
}
