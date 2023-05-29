package com.hgkj.controller;

import com.hgkj.model.entity.Employment;
import com.hgkj.model.entity.Student;
import com.hgkj.model.service.EmploymentService;
import com.hgkj.model.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class EmploymentInformationController {
    @Autowired
    EmploymentService employmentService;
    @Autowired
    StudentService studentService;

    @RequestMapping("/EmploymentInformation")
    public ModelAndView allEmploymentInformation(@SessionAttribute("studentId") int studentId) {
        ModelAndView modelAndView = new ModelAndView();
        List<Employment> employment = employmentService.allEmploymentByStudentIdService(studentId);
        modelAndView.addObject("employment", employment);
        modelAndView.setViewName("/index/student/wallet.jsp");
        return modelAndView;
    }

    @RequestMapping("/AddStudentInformation")
    public ModelAndView addStudentInformation(Employment employment, HttpSession session) {
        ModelAndView modelAndView = new ModelAndView();
        int studentId = (int) session.getAttribute("studentId");
        Student student = studentService.allStudentByIdService(studentId);
        employment.setStudentId(studentId);
        employment.setStudentName(student.getStudentName());
        employment.setStudentSex(student.getStudentSex());
        employment.setMajor(student.getMajor());
        employment.setStudentTel(student.getStudentTel());
        int row = employmentService.addEmploymentService(employment);
        if (row > 0) {
            modelAndView.setViewName("/EmploymentInformation");
        } else {
            modelAndView.setViewName("/EmploymentInformation");
        }
        return modelAndView;
    }

    @RequestMapping("/UpdateEmploymentInformation")
    public ModelAndView updateEmploymentInformation(Employment employment,int employmentId) {
        ModelAndView modelAndView=new ModelAndView();
        int row=employmentService.updateEmploymentByIdService(employment, employmentId);
        if(row>0){
            modelAndView.setViewName("/EmploymentInformation");
        }else {
            modelAndView.setViewName("/EmploymentInformation");
        }
        return modelAndView;
    }
}