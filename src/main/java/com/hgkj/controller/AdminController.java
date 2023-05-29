package com.hgkj.controller;

import com.hgkj.model.entity.Teacher;
import com.hgkj.model.entity.User;
import com.hgkj.model.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class AdminController {
    @Autowired
    AdminService adminService;
    @RequestMapping("/teacherInformation")
    public ModelAndView allTeacherInformation(@SessionAttribute("teacher")Teacher teacher){
        ModelAndView modelAndView = new ModelAndView();
        List<Teacher> teachers = adminService.allTeacherByIdService(teacher);
        modelAndView.addObject("teachers",teachers);
        modelAndView.setViewName("/index/admin/teacher.jsp");
        return modelAndView;
    }
    @RequestMapping("/updateAdminPwd")
    public ModelAndView updateAdminPwd(String password,String newOne_password,String newNow_password
                                        ,HttpSession session){
        ModelAndView modelAndView = new ModelAndView();
        String userName = (String) session.getAttribute("userName");
        User user = adminService.allUserByIdService(userName);
        String userPwd = user.getUserPwd();
        if(newOne_password.equals(newNow_password)){
            int row = adminService.updateAdminPwdService(newOne_password,userName);
            if(userPwd.equals(password)){
                modelAndView.setViewName("/login/login.jsp");
            }else {
                modelAndView.addObject("msg","您的原密码错误,请重新输入!");
                modelAndView.setViewName("/index/admin/setting.jsp");
            }
        }else {
            modelAndView.addObject("msg","您两次输入的密码不一致,请重新输入!");
            modelAndView.setViewName("/index/admin/setting.jsp");
        }
        return modelAndView;
    }

}
