package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Dao;
import dto.Admin;

@WebServlet("/adminlogin")
public class AdminLogin extends HttpServlet 
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String adminemail=(String)req.getParameter("adminemail");
		String adminpassword=(String)req.getParameter("adminpassword");

		
		Dao dao=new Dao();
		
		try {
			

			Admin admin=dao.findByEmail(adminemail);
			if(admin!=null)
			{
			if(admin.getAdminemail().equals(adminemail))
			{
				
				if(admin.getAdminpassword().equals(adminpassword))
				{
					HttpSession session =req.getSession();
					session.setAttribute("adminname", admin.getAdminemail());
					req.setAttribute("movie", dao.getAllTheMovie());
					RequestDispatcher rd=req.getRequestDispatcher("home.jsp");
					rd.include(req, resp);
				}
				else
				{	
					req.setAttribute("message", "Incorrect Password");
					RequestDispatcher rd=req.getRequestDispatcher("alogin.jsp");
					rd.include(req, resp);
					
				}
				
			
			}
			}
			
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
			req.setAttribute("message", "Incorrect email");
			RequestDispatcher rd=req.getRequestDispatcher("alogin.jsp");
			rd.include(req, resp);
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
