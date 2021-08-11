package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.BoardDAO;
import model.BoardDTO;

@WebServlet("/ToonBoardService")
public class ToonBoardSearchService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		
		
		
		String item = request.getParameter("item");
		String search = request.getParameter("search");
		
		System.out.println(search);
		
		BoardDAO dao = new BoardDAO();
		ArrayList<BoardDTO> list = dao.Search(item, search);
		
		if(list !=null) {
			System.out.println("�Խñ� �˻��� �����߽��ϴ�.");
			System.out.println(list.size());
			HttpSession session = request.getSession();
			session.setAttribute("board_info", list);
		}else {
			System.out.println("�Խñ� �˻��� �����߽��ϴ�.");
		}
		response.sendRedirect("Board.jsp");
	}

}
