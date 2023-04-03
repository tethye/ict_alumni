

package servlet;

import DAO.UserDAOImpl;
import DB.DBConnection;
import entity.UserDtls;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet({"/SearchServlet"})
public class SearchServlet extends HttpServlet {
    public SearchServlet() {
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserDAOImpl userDAO = new UserDAOImpl(DBConnection.getConn());

        try {
            String svalue = request.getParameter("svalue");
            System.out.println("the search value is : " + svalue);
            List<UserDtls> list = userDAO.searchUser(svalue);
            HttpSession session = request.getSession();
            String context = request.getContextPath();
            request.setAttribute("list", list);
            request.getRequestDispatcher("search.jsp").forward(request, response);
            if (list != null) {
                System.out.println("the lis is not null in SearchServlet page");
                session.setAttribute("succMsg1", "Searching result...");
                response.sendRedirect(context + "/search.jsp");
            } else {
                System.out.println("list is null");
                session.setAttribute("failedMsg1", "No Result Found");
                response.sendRedirect(context + "/home.jsp");
            }
        } catch (Exception var8) {
            var8.printStackTrace();
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
