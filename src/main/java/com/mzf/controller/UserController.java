package com.mzf.controller;

import com.mzf.entity.User;
import com.mzf.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
@RequestMapping("/User")
public class UserController {
    @Autowired
    @Qualifier("userServiceImpl")
    private UserService userService;

    /*增加一个用户*/
    @RequestMapping("/AddUser")
    public String addUser(User user,Model model){
        String msg="";
        userService.addUserus(user);
        msg="注册成功！！！！";
        model.addAttribute("msg",msg);
        return "error";
    }
    /*管理员权限-根据手机号删除一个用户*/

    @RequestMapping("/DeleUser/{uphone}")
    public String deleteUser(@PathVariable("phone")String uphone){
        userService.deleteUserus(uphone);
        return "#";
    }
    /*管理员权限-查询全部用户*/

    public String selectAllUser(Model model){
        List<User> list=userService.selectAllUserus();
        model.addAttribute("List",list);
        return"#";
    }
    /*管理员权限-修改个人信息*/
    @RequestMapping("/ToupUser")
    public String toupUser(Model model,int id){
        User user=userService.selectUserByIdus(id);
        model.addAttribute("user",user);
        return "#";
    }
    @RequestMapping("/UpUser")
    public String upUser(User user,Model model){
        userService.updateUserus(user);
        User user1=userService.selectUserByIdus(user.getUid());
        model.addAttribute("user1",user1);
        return "#";
    }
    /*登录*/
    @RequestMapping("/Login")
    public String login(Model model, HttpServletRequest request, HttpServletResponse response){
        String msg="";
        String uphone=request.getParameter("uphone");
        String upassword=request.getParameter("upassword");
        User user1=userService.selectuserByPh(uphone);
        List<User> list=userService.selectAllUserus();
        for(User u:list){
            if((uphone.equals(u.getUphone()))){
                break;
            }else {
                msg="用户不存在！！请重试";
                model.addAttribute("msg",msg);
                return "error";
            }
        }
        /*System.out.println("用户账号"+user1.getUphone());
        System.out.println("用户密码"+user1.getUpassword());*/
        if(uphone==null&&upassword==null){
            msg="账号或密码不能为空";
            model.addAttribute("msg",msg);
            return "error";
        }/*else if(upassword.equals(user1.getUpassword())){
            return "shouye";
        }*/
        if(!(upassword.equals(user1.getUpassword()))){
            System.out.println(upassword!=user1.getUpassword());
            msg="账号或密码不正确！！！";
            model.addAttribute("msg",msg);
            return "error";
        }

        return "frontpage";
    }

}
