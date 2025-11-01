package DAO;

import model.Student;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class StudentDAO {


    public List<Student> getAll() {
        List<Student> students = new ArrayList<>();
        String sql = "select * from students";

        try(Connection connection = DBConnection.getConnection();
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet resultSet = ps.executeQuery()) {


            while (resultSet.next()) {
                Student student = new Student(
                        resultSet.getInt("id"),
                        resultSet.getString("first_name"),
                        resultSet.getString("last_name"),
                        resultSet.getString("middle_name"),
                        resultSet.getString("phone_number")
                );

                students.add(student);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return students;
    }


    public Student getById(int id) {
        String sql = "select * from students where id = ?";
        Student student = null;

        try (Connection connection = DBConnection.getConnection();
        PreparedStatement ps = connection.prepareStatement(sql)) {

            ps.setInt(1, id);

            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    student = new Student(
                            rs.getInt("id"),
                            rs.getString("first_name"),
                            rs.getString("last_name"),
                            rs.getString("middle_name"),
                            rs.getString("phone_number")
                    );
                }
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return student;
    }


    public void add(Student student) {
        String sql = "insert into students (first_name, last_name, middle_name, phone_number)" +
                "values (?, ?, ?, ?)";

        try (Connection connection = DBConnection.getConnection();
        PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setString(1, student.getFirstName());
            ps.setString(2, student.getLastName());
            ps.setString(3, student.getMiddleName());
            ps.setString(4, student.getPhoneNumber());
            ps.executeUpdate();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void update(Student student) {
        String sql = "update students set first_name = ?, last_name = ?, middle_name = ?, phone_number = ? where id = ?";
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement ps = connection.prepareStatement(sql)) {

            ps.setString(1, student.getFirstName());
            ps.setString(2, student.getLastName());
            ps.setString(3, student.getMiddleName());
            ps.setString(4, student.getPhoneNumber());
            ps.setInt(5, student.getId());
            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
