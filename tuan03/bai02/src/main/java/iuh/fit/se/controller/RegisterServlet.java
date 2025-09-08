package iuh.fit.se.controller;

import iuh.fit.se.model.User;
import iuh.fit.se.dao.UserDao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String fname = request.getParameter("firstName");
        String lname = request.getParameter("lastName");
        String email = request.getParameter("email");
        String gender = request.getParameter("gender");
        String day = request.getParameter("day");
        String month = request.getParameter("month");
        String year = request.getParameter("year");

        String birthday = day + "-" + month + "-" + year;

        User user = new User(fname, lname, email, gender, birthday);

        UserDao.addUser(user);

        request.setAttribute("users", UserDao.getAllUsers());
        RequestDispatcher rd = request.getRequestDispatcher("list.jsp");
        rd.forward(request, response);
    }
}
