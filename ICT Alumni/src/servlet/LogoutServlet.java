

package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet({"/LogoutServlet"})
public class LogoutServlet extends HttpServlet {
    public LogoutServlet() {
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            HttpSession session = request.getSession();
            session.removeAttribute("user");
            HttpSession session1 = request.getSession();
            session1.setAttribute("succMsg", "logout successfull");
            String context = request.getContextPath();
            response.sendRedirect(context + "/login.jsp");
        } catch (Exception var6) {
            var6.printStackTrace();
        }

    }
}
