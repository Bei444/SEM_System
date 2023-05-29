package com.hgkj.controller;

import com.hgkj.model.entity.Teacher;
import com.hgkj.model.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@Controller
public class TeacherPersonalInformation {

    @Autowired
    TeacherService teacherService;

    @RequestMapping("/TeacherInformation")
    public ModelAndView TeacherInformation(HttpSession session) {
        ModelAndView modelAndView = new ModelAndView();
        int teacherId= (int) session.getAttribute("teacherId");
        Teacher teacher =teacherService.allTeacherByIdService(teacherId);
        session.setAttribute("teacher",teacher);
        modelAndView.setViewName("/index/teacher/profile.jsp");
        return modelAndView;
    }

}