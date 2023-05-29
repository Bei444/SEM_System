package com.hgkj.controller;

import com.hgkj.model.entity.Teacher;
import com.hgkj.model.service.StudentService;
import com.hgkj.model.service.TeacherService;
import com.hgkj.model.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@Controller
public class UserController {
    @Autowired
    UserService userService;
    @Autowired
    StudentService studentService;
    @Autowired
    TeacherService teacherService;

    @RequestMapping("/Login")
    public ModelAndView Login(int Id, String Pwd, String userIdentity,HttpSession session) {
        ModelAndView modelAndView=new ModelAndView();
        if (userIdentity.equals("student")) {
            String studentName=studentService.allStudentByStuIdAndStuPwdService(Id,Pwd);
            if(studentName!=null){
                session.setAttribute("studentId",Id);
                modelAndView.setViewName("/index/student/index.jsp");
            }else {
                modelAndView.setViewName("login/login.jsp");
            }
        } else if (userIdentity.equals("teacher")) {
            String teacherName=teacherService.allTeacherByIdAndPwdService(Id,Pwd);
            if(teacherName!=null){
                session.setAttribute("teacherId",Id);
                Teacher teacher=teacherService.allTeacherByIdService(Id);
                session.setAttribute("teacher",teacher);
                modelAndView.setViewName("/index/teacher/index.jsp");
            }else {
                modelAndView.setViewName("login/login.jsp");
            }
        } else {
            String userName=userService.allUserByUserIdAndUserPwdService(Id, Pwd);
            if(userName!=null){
                session.setAttribute("userName",userName);
                modelAndView.setViewName("/index/admin/index.jsp");
            }else {
                modelAndView.setViewName("login/login.jsp");
            }
        }
        return modelAndView;
    }
}
