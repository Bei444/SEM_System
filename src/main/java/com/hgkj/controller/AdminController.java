package com.hgkj.controller;

import com.hgkj.model.entity.Teacher;
import com.hgkj.model.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class AdminController {
    @Autowired
    AdminService adminService;
    @RequestMapping("/teacherInformation")
    public ModelAndView allTeacherInformation(@SessionAttribute("teacherId")int teacherId){
        ModelAndView modelAndView = new ModelAndView();
        List<Teacher> teacher = adminService.allTeacherByIdDao(teacherId);
        modelAndView.addObject("teacher",teacher);
        modelAndView.setViewName("/index/admin/teacher.jsp");
        return modelAndView;
    }
}
