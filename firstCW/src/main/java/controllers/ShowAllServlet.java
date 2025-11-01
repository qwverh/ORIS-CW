package controllers;

import DAO.StudentDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Student;

import java.io.IOException;
import java.util.List;


@WebServlet("/show")
public class ShowAllServlet extends HttpServlet {
    private StudentDAO studentDAO = new StudentDAO();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Student> students = studentDAO.getAll();
        req.setAttribute("students", students);
        req.getRequestDispatcher("/show.ftl").forward(req, resp);
    }
}
