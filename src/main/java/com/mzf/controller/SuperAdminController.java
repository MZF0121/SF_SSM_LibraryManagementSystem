package com.mzf.controller;

import com.mzf.entity.SuperAdmin;
import com.mzf.service.SuperAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/SuperAD")
public class SuperAdminController {
    @Autowired
    @Qualifier("superAdminService")
    private SuperAdminService superAdminService;

    public void setSuperAdminService(SuperAdminService superAdminService) {
        this.superAdminService = superAdminService;
    }

    @RequestMapping("/Login")
    public String seleSAD(HttpServletRequest request,Model model ){
        String msg="msg";
        String sphone=request.getParameter("sphone");
        String spassword=request.getParameter("spassword");
       SuperAdmin SA=superAdminService.selectSASS(sphone);
       if(!(spassword.equals(SA.getSpassword()))){
           msg="密码不对";
           model.addAttribute("msg",msg);
           return "error";
       }
       return "Adminmanagement";

    }
    /*返回首页*/
        @RequestMapping("/BackHome")
    public String backHome(){
        return "frontpage";

    }
    /*查找图书*/
    @RequestMapping("/FindBook")
    public String findbook(){
        return "Findbooks";
    }
    /*更新图书*/
    @RequestMapping("/UpdateB")
    public String updateB(){
        return "Updatebook.jsp";
    }
    /*增加图书*/
    @RequestMapping("/ADB")
    public String adb(){
        return "AddBook";
    }
    /*删除图书*/
    @RequestMapping("/DeleB")
    public String deleB(){
        return "DeleteBook";
    }
}

