package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.RecommandDAO;
import model.RecommandDTO;

@WebServlet("/ToonRecommandWriteService")
public class ToonRecommandWriteService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-kr");
		
		String nick = request.getParameter("nick");
		String title = request.getParameter("title");
		String genre = request.getParameter("genre");
		String content = request.getParameter("content");
		
		System.out.println(nick);
		System.out.println(title);
		System.out.println(genre);
		System.out.println(content);
		
		RecommandDAO dao = new RecommandDAO(); 
		RecommandDTO dto = new RecommandDTO(nick, title, genre, content);
		int cnt = dao.Insert(dto);
		
		if (cnt>0) {
			System.out.println("�Խñ� �ۼ� ����");
		}else {
			System.out.println("�Խñ� �ۼ� ����");
		}
		response.sendRedirect("Recommand.jsp");
	}

}
