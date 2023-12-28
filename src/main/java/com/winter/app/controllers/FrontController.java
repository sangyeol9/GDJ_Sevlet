package com.winter.app.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.winter.app.regions.RegionDAO;
import com.winter.app.regions.RegionDTO;

/**
 * Servlet implementation class FrontController
 */
@WebServlet("/FrontController")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		RegionDAO regionDAO = new RegionDAO();
		List<RegionDTO> ar = null;
		try {
			ar = regionDAO.getList();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("요청이 발생했따");
		PrintWriter out = response.getWriter();
		out.print("<h1>Myhome</h1>");
		out.println("<table>");
		for(RegionDTO regionDTO:ar) {
			out.println("<tr>");
			out.println("<td>");
			out.println(regionDTO.getRegion_id());
			out.println("</td>");
			out.println("<td>");
			out.println(regionDTO.getRegion_name());
			out.println("</td>");
			
			out.println("</tr>");
		}
		out.print("</table");
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
