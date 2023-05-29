package com.hgkj.controller;

import com.hgkj.model.entity.Student;
import com.hgkj.model.entity.Teacher;
import com.hgkj.model.service.StudentService;
import com.hgkj.model.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@Controller
public class StudentController {
    @Autowired
    StudentService studentService;
    @Autowired
    TeacherService teacherService;

    @RequestMapping("/StudentRegister")
    @ResponseBody
    public ModelAndView addStudent(Student student) {
        ModelAndView modelAndView = new ModelAndView();
        Teacher teacher = teacherService.allTeacherByNameService(student.getTeacherName());
        student.setCollege(teacher.getCollege());
        student.setTeacherId(teacher.getTeacherId());
        student.setSchoolRecord("在籍");
        int row = studentService.addStudent(student);
        if (row > 0) {
            modelAndView.addObject("studentId", student.getStudentId());
            modelAndView.setViewName("/index/student/index.jsp");
        } else {
            modelAndView.setViewName("/index/register/register.jsp");
        }
        return modelAndView;
    }

    @RequestMapping("/updateStudentPwd")
    public ModelAndView updateStudentPwd(String password, String newOne_password, String newTow_password,
                                         HttpSession session) {
        ModelAndView modelAndView = new ModelAndView();
        int studentId = (int) session.getAttribute("studentId");
        Student student = studentService.allStudentByIdService(studentId);
        String studentPwd = student.getStudentPwd();
        if (newOne_password.equals(newTow_password)) {
            int row = studentService.updateStudentPwdService(newOne_password, studentId);
            if (studentPwd.equals(password)) {
                modelAndView.setViewName("/login/login.jsp");
            } else {
                modelAndView.addObject("mag", "您的原密码错误，请重新输入！");
                modelAndView.setViewName("/index/student/setting.jsp");
            }
        } else {
            modelAndView.addObject("mag", "您两次输入的密码不一致，请重新输入！");
            modelAndView.setViewName("/index/student/setting.jsp");
        }
        return modelAndView;
    }
    @RequestMapping("/updateStudentTel")
    public ModelAndView updateStudentTel(long studentTel,HttpSession session){
        ModelAndView modelAndView=new ModelAndView();
        int studentId = (int) session.getAttribute("studentId");
        int row=studentService.updateStudentTelService(studentTel,studentId);
        if(row>0){
            modelAndView.setViewName("/index/student/setting.jsp");
        }
        return modelAndView;
    }

}
