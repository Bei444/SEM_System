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

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class StudentPersonalInformation {
    @Autowired
    StudentService studentService;
    @Autowired
    TeacherService teacherService;
    @RequestMapping("/StudentInformation")
    public ModelAndView StudentInformation(HttpSession session) {
        ModelAndView modelAndView = new ModelAndView();
        int studentId= (int) session.getAttribute("studentId");
        Student student = studentService.allStudentByIdService(studentId);
        Teacher teacher=teacherService.allTeacherByIdService(student.getTeacherId());
        modelAndView.addObject("student", student);
        modelAndView.addObject("teacher",teacher);
        modelAndView.setViewName("/index/student/profile.jsp");
        return modelAndView;
    }

    @RequestMapping("/TeacherStudentInformation")
    public ModelAndView teacherStudentInformation(HttpSession session){
        ModelAndView modelAndView=new ModelAndView();
        Teacher teacher= (Teacher) session.getAttribute("teacher");
        int teacherId=teacher.getTeacherId();
        List<Student> students=studentService.allStudentByTeacherIdService(teacherId);
        modelAndView.addObject("students",students);
        modelAndView.setViewName("/index/teacher/wallet.jsp");
        return modelAndView;
    }

}
