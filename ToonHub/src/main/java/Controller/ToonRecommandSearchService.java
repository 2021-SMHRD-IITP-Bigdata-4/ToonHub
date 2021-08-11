package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.RecommandDAO;
import model.RecommandDTO;

@WebServlet("/ToonRecommandSearchService")
public class ToonRecommandSearchService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String item = request.getParameter("item");
		String search = request.getParameter("search");
		
	RecommandDAO dao = new RecommandDAO();
	ArrayList<RecommandDTO> result = dao.Search(item, search);
	
	if(result!= null) {
		System.out.println("�˻��� �����߽��ϴ�.");
		HttpSession session = request.getSession();
		session.setAttribute("result", result);
	}else {
		System.out.println("�˻��� �����߽��ϴ�.");
	}
	response.sendRedirect("Recommand.jsp");
	}

}
