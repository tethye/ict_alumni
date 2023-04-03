package servlet;

import DAO.UserDAOImpl;
import DB.DBConnection;
import entity.UserDtls;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet({"/insertServlet"})
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024,
        maxFileSize = 1024 * 1024 * 5,
        maxRequestSize = 1024 * 1024 * 5 * 5)
public class InsertServlet extends HttpServlet {

    public InsertServlet() {
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) {
        try {
            String id = request.getParameter("id");
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String batch = request.getParameter("batch");
            String pass = request.getParameter("pass");
            String phone = request.getParameter("phone");
            String ctown = request.getParameter("ctown");
            String ptown = request.getParameter("ptown");
            String grad = request.getParameter("grad");
            String sex = request.getParameter("sex");
            String job = request.getParameter("job");
            String jdtls = request.getParameter("jdtls");
            String flink = request.getParameter("flink");
            String ilink = request.getParameter("ilink");
            String llink = request.getParameter("llink");
            Part picture = request.getPart("picture");

            UserDtls userDtls = new UserDtls(id, name, email, batch, pass, phone, ctown, ptown,
                    grad, sex, job, jdtls, flink, ilink, llink);
            UserDAOImpl userDAO = new UserDAOImpl(DBConnection.getConn());

            boolean flag = userDAO.insertUser(userDtls, picture);

            HttpSession session = request.getSession();
            if (flag) {
                session.setAttribute("succMsg", "Your registration is complete...");
                response.sendRedirect("insert.jsp");
            } else {
                session.setAttribute("failedMsg", "User details not insert..");
                response.sendRedirect("insert.jsp");
            }
        } catch (Exception var22) {
            var22.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) {
    }
}

