package com.example.web001.servlet;

import com.example.web001.entity.Student;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

@WebServlet("/student")
public class StudentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Student student = new Student(1,"jack",22);
        //        请求来到JSP
        List<Student> list = Arrays.asList(
                new Student(2,"james",13),
                student,
                new Student(13,"asdf",31)
        );
        req.setAttribute("student",list);
        req.getRequestDispatcher("test.jsp").forward(req,resp);
//        传送数据
    }
}
