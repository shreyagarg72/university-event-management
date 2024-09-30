package event;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SearchServelet
 */
public class SearchServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchServelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		String ename = request.getParameter("contact");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.write("<h2>event info</h2>");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","Shreya","sg@07022003");
			String query = "select * from event where ename= "+ename+"";
			Statement smt = con.createStatement();
			ResultSet rs = smt.executeQuery(query);
			out.print("<table border='1' width='100%'");  
	        out.print("<tr><th>id</th>"
	        			+ "<th>ename</th>"
	        			+ "<th>edate</th>"
	        			+ "<th>etime</th>"
	        			+ "<th>venue</th>"
	        		+ "</tr>");
			while(rs.next()) {
				 out.print("<tr>"
				 				+"<td>"+rs.getInt(1)+"</td>"
				 				+"<td>"+rs.getString(2)+"</td>"
				 				+"<td>"+rs.getDate(3)+"</td>"
				 				+"<td>"+rs.getString(4)+"</td>"
				 				+"<td>"+rs.getString(5)+"</td>"
				 			+"</tr>");      	        
			}
			}
			catch(Exception e) {
				e.printStackTrace();
			}
	}

}
