package event;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateEvent
 */
public class UpdateEvent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateEvent() {
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
		String id=request.getParameter("id");
	    int ide=Integer.parseInt(id);
	    String ename=request.getParameter("ename");
	    String edate=request.getParameter("edate");
	    Date edate1=Date.valueOf(edate);
	    String etime=request.getParameter("etime");
	    String venue=request.getParameter("venue");
	    
	    
	    response.setContentType("text/html");
	    
	    PrintWriter out=response.getWriter();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","Shreya","sg@07022003");
			String query = "update event set ename = ?,edate=?,etime=?, venue = ? where id = ?";
			PreparedStatement pstmt = con.prepareStatement(query);
			pstmt.setString(1, ename);
			pstmt.setDate(2, edate1);
			pstmt.setString(3, etime);
			pstmt.setString(4, venue);
			pstmt.setInt(5, ide);
			
			int status=pstmt.executeUpdate();
	        if(status==1) {
	        	System.out.println("EDIT DONE !!");
	        }
	        else {
	        	System.out.println("ERROR !!");
	        }
	        
	        response.sendRedirect("/universitymanagement/updateevent.jsp");

			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
