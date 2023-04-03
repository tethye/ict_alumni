

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

@WebServlet({"/updateServlet"})
public class UpdateServlet extends HttpServlet {
    public UpdateServlet() {
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String id = request.getParameter("id");
            String name = request.getParameter("name");
            String email = request.getParameter("email");
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
            UserDtls userDtls = new UserDtls();
            userDtls.setId(id);
            userDtls.setName(name);
            userDtls.setEmail(email);
            userDtls.setPass(pass);
            userDtls.setPhone(phone);
            userDtls.setCtown(ctown);
            userDtls.setPtown(ptown);
            userDtls.setGrad(grad);
            userDtls.setSex(sex);
            userDtls.setJob(job);
            userDtls.setJdtls(jdtls);
            userDtls.setFlink(flink);
            userDtls.setIlink(ilink);
            userDtls.setLlink(llink);
            UserDAOImpl dao = new UserDAOImpl(DBConnection.getConn());
            boolean f = dao.checkPass(id, pass);
            HttpSession session = request.getSession();
            String context = request.getContextPath();
            if (f) {
                boolean f1 = dao.updateUser(userDtls);
                if (f1) {
                    session.setAttribute("succMsgg", "Update Successfully....");
                    response.sendRedirect(context + "/profile.jsp");
                } else {
                    session.setAttribute("failedMsgg", "Something wrong ....");
                    response.sendRedirect(context + "/Update.jsp");
                }
            } else {
                session.setAttribute("failedMsgg", "invalid  password....");
                response.sendRedirect(context + "/Update.jsp");
            }
        } catch (Exception var23) {
            var23.printStackTrace();
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
