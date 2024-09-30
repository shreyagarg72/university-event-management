package event;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Time;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CreateEvent
 */
public class CreateEvent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateEvent() {
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
	    out.write("<html><body><h3> "+ename+"event is Successfully created</h3> </body></html");
	    try {
			mySql(ide, ename, edate1, etime, venue);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		}
		
		static void mySql(int id, String ename, Date edate,String etime, String venue ) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","Shreya","sg@07022003");
			String insert="insert into event (id, ename, edate, etime, venue) values (?,?,?,?,?)";
			PreparedStatement pstmt=con.prepareStatement(insert);
			pstmt.setInt(1, id);
			pstmt.setString(2, ename);
			pstmt.setDate(3, edate);
			pstmt.setString(4, etime);
			pstmt.setString(5, venue);
			
			pstmt.executeUpdate();
			System.out.println("Data is Added Successfully.....");
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}

}
