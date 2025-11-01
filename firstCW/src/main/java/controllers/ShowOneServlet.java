package controllers;



import DAO.StudentDAO;
import model.Student;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/showone")
public class ShowOneServlet extends HttpServlet {

    private StudentDAO studentDAO = new StudentDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Student student = studentDAO.getById(id);
        req.setAttribute("student", student);
        req.getRequestDispatcher("/showone.ftl").forward(req, resp);
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        String firstName = req.getParameter("firstName");
        String lastName = req.getParameter("lastName");
        String middleName = req.getParameter("middleName");
        String phoneNumber = req.getParameter("phoneNumber");

        Student student = new Student(id, firstName, lastName, middleName, phoneNumber);
        studentDAO.update(student);

        resp.sendRedirect("show");
    }
}
