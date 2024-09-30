package student;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class studentdetails
 */
public class studentdetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public studentdetails() {
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
		String fn = request.getParameter("fname");
		String ln = request.getParameter("lname");
		String age = request.getParameter("age");
		int agee = Integer.parseInt(age);
		String email = request.getParameter("email");
		String pass = request.getParameter("password");
		String gender = request.getParameter("gender");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.write("<html>/<body><h3>  your response is submitted succesfully ! </h3> </body></html");
		try {
			myDatabase(fn,ln,agee,email,pass,gender);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	static void myDatabase(String fn, String ln, int agee, String email,String pass, String gender) {
		// TODO Auto-generated method stub
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","Shreya","sg@07022003");
			String query = "insert into student values(?,?,?,?,?,?)";
			PreparedStatement pstmt = con.prepareStatement(query);
		
			pstmt.setString(1,fn);
			pstmt.setString(2, ln);
			pstmt.setInt(3,agee);
			pstmt.setString(4,email);
			pstmt.setString(5, pass);
			pstmt.setString(6, gender);
			pstmt.executeUpdate();
			System.out.println("Data is Added succesfully....");

		}
		catch(Exception e) {
			e.printStackTrace();
		}

	}


	}


