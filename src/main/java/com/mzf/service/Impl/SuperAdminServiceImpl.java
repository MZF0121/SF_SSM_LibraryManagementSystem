package com.mzf.service.Impl;

import com.mzf.dao.SuperAdminDao;
import com.mzf.entity.SuperAdmin;
import com.mzf.service.SuperAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service("MZF")
public class SuperAdminServiceImpl implements SuperAdminService {
    @Autowired
    @Qualifier("superAdminDao")
    private SuperAdminDao superAdminDao;
    public SuperAdminDao getSuperAdminDao() {
        return superAdminDao;
    }

    public void setSuperAdminDao(SuperAdminDao superAdminDao) {
        this.superAdminDao = superAdminDao;
    }

    @Override
    public SuperAdmin selectSASS(String sphone) {
        return superAdminDao.selectSA(sphone);
    }


}
