package com.hgkj.controller;

import com.hgkj.model.entity.Student;
import com.hgkj.model.entity.Teacher;
import com.hgkj.model.service.StudentService;
import com.hgkj.model.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StudentPersonalInformation {
    @Autowired
    StudentService studentService;
    @Autowired
    TeacherService teacherService;
    @RequestMapping("/StudentInformation")
    public ModelAndView StudentInformation(@SessionAttribute("studentId") int studentId) {
        ModelAndView modelAndView = new ModelAndView();
        Student student = studentService.allStudentByIdService(studentId);
        Teacher teacher=teacherService.allTeacherByIdService(student.getTeacherId());
        modelAndView.addObject("student", student);
        modelAndView.addObject("teacher",teacher);
        modelAndView.setViewName("/index/student/profile.jsp");
        return modelAndView;
    }
}
