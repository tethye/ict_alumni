
package servlet;

import DAO.UserDAOImpl;
import DB.DBConnection;
import entity.UserDtls;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet({"/LoginServlet"})
public class LoginServlet extends HttpServlet {
    public LoginServlet() {
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String pass = request.getParameter("pass");
        System.out.println(id + " " + pass);
        UserDAOImpl userDao = new UserDAOImpl(DBConnection.getConn());

        try {
            UserDtls user = userDao.checkLogin(id, pass);
            HttpSession session = request.getSession();
            String context = request.getContextPath();
            if (user != null) {
                session.setAttribute("user", user);
                session.setAttribute("succMsg", "Login Successfully done...");
                response.sendRedirect(context + "/alumni.jsp");
            } else {
                session.setAttribute("failedMsg", "your password is incorrect..");
                response.sendRedirect(context + "/login.jsp");
            }
        } catch (Exception var9) {
            var9.printStackTrace();
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
