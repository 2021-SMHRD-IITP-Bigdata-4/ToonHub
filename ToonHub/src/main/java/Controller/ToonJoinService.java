package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ToonMemberDAO;
import model.ToonMemberDTO;

@WebServlet("/ToonJoinService")
public class ToonJoinService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("EUC-KR");
		String id = request.getParameter("id");
		String nick = request.getParameter("nick");
		String pw = request.getParameter("password");
		
		ToonMemberDTO dto = new ToonMemberDTO(id, nick, pw);
		
		ToonMemberDAO dao = new ToonMemberDAO(); 
		
		int cnt = dao.join(dto);
		
		if(cnt>0) {
			System.out.println("join successed");
			// �ӽ÷� �ϴ� �������� �����α�
			// ȸ������ �����˸�â ����� �ƴ� �ϴ� �����ص���
			response.sendRedirect("ToonMain.jsp");
		}
		
		else {
			System.out.println("ȸ������ ����");
			response.sendRedirect("ToonMain.jsp");
		}
		
		
	}

}
