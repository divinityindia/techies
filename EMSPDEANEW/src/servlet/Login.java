package servlet;

import model.LoginDao;
import java.io.IOException;
import java.io.PrintWriter;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.MD5;

/**
 * Servlet implementation class Login
 */
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession(true);
        String user=request.getParameter("userName");
        String pass=request.getParameter("passWord");
        String cat=request.getParameter("category");
        try
        {
            LoginDao dao=new LoginDao();
            String result=dao.authenticateUser(user, pass,cat);
            out.print(result);

            if(result.equals("SUCCESS")) //If function returns success string then user will be rooted to Home page
            {
                if(cat.equals("headoffice"))
                {
                    session.setAttribute("cat", cat);
                    response.sendRedirect("ho/ho.jsp");
                }
                else if(cat.equals("branch"))
                {
                    session.setAttribute("cat", cat);
                    response.sendRedirect("branch/branch.jsp");
                }
                else if(cat.equals("staff"))
                {
                    session.setAttribute("cat", cat);
                    response.sendRedirect("staff/staff.jsp");
                }
//                else{
//                    session.setAttribute("cat", result[1]);
//                    session.setAttribute("dept", result[2]);
//                    session.setAttribute("ID", result[3]);
//                    response.sendRedirect("dept/dept.jsp");
//                }

            }
            else
            {
                request.setAttribute("temp", result); //If authenticateUser() function returnsother than SUCCESS string it will be sent to Login page again. Here the error message returned from function has been stored in a errMessage key.
                request.getRequestDispatcher("/index.jsp").forward(request, response);//forwarding the request
            }

        }
        catch (Exception e){out.print(e);}
        out.close();
    }

}
