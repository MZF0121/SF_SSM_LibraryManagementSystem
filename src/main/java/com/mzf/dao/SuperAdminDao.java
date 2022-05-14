package com.mzf.dao;

import com.mzf.entity.SuperAdmin;
import org.springframework.stereotype.Service;


public interface SuperAdminDao {
    /*通过手机号查找用户*/
    SuperAdmin selectSA(String sphone);

}
