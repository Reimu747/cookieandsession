package servlet;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;

public class LoginServlet extends HttpServlet
{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        if (req.getParameter("username").equals("root") && req.getParameter("password").equals("admin"))
        {
            Cookie cookie = new Cookie("username", req.getParameter("username"));
            cookie.setMaxAge(60 * 60 * 24);
            resp.addCookie(cookie);

            HttpSession s = req.getSession();
            s.setAttribute("username", "root");
            resp.sendRedirect("jsp/succ1.jsp");
        }
        else
        {
            req.setAttribute("msg", "Wrong!");
            req.getRequestDispatcher("index.jsp").forward(req, resp);
        }
    }
}
