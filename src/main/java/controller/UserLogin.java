package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao;
import dto.User;
@WebServlet("/userlogin")
public class UserLogin extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String useremail=req.getParameter("useremail");
		String userpassword=req.getParameter("userpassword");
		
		Dao dao=new Dao();
		
		try {
			
			
			User user=dao.findByUemail(useremail);
			
			if(user!=null)
			{
				if(user.getUseremail().equals(useremail))
				{
					if(user.getUserpassword().equals(userpassword))
					{
						//req.setAttribute("message", "Incorrect User Password");
						req.setAttribute("movie", dao.getAllTheMovie());
						RequestDispatcher rd=req.getRequestDispatcher("home.jsp");
						rd.include(req, resp);
					}
					else
					{
						req.setAttribute("message", "Incorrect User Password");
						RequestDispatcher rd=req.getRequestDispatcher("userlogin.jsp");
						rd.include(req, resp);
					}
				}
			}
			
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			req.setAttribute("message", "Incorrect User Email Address");
			RequestDispatcher rd=req.getRequestDispatcher("userlogin.jsp");
			rd.include(req, resp);
			e.printStackTrace();
		}
		
		
		
		
	}
}
