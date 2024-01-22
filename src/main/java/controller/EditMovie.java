package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Dao;
import dto.Movie;
@WebServlet("/editmovie")
public class EditMovie extends HttpServlet
{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int movieid=Integer.parseInt(req.getParameter("id"));
		Dao dao=new Dao();
		
		try {
			HttpSession session =req.getSession();
			String adminname=(String)session.getAttribute("adminname");
			
			if(adminname!=null)
			{
				Movie m=dao.findMoviebyId(movieid);
				req.setAttribute("movie", m);
				RequestDispatcher rd = req.getRequestDispatcher("editmovie.jsp");
				rd.include(req, resp);
			}
			else
			{
				req.setAttribute("message", "access denied, alogin required");
				RequestDispatcher rd = req.getRequestDispatcher("alogin.jsp");
				rd.include(req, resp);
			}
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
