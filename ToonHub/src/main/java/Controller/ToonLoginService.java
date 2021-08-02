package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.ToonMemberDAO;
import model.ToonMemberDTO;


@WebServlet("/ToonLoginService")
public class ToonLoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		ToonMemberDTO dto =  new ToonMemberDTO(id, pw); 
		ToonMemberDAO dao = new ToonMemberDAO();
		ToonMemberDTO logindto = dao.login(dto);
		
		if(logindto != null) {
			System.out.println("login success");
			
			// �α��� ���� �� logindto�� mypage�� �� id, �г���, ���,���� ���� �־���
			// �ٵ� ���� �������� ������ ��Ƽ�� �ٲ�ߵǱ� �ϰڴ� -07/31/2021 EJ
			
		HttpSession session = request.getSession();
		session.setAttribute("info", logindto);
		}else {
			System.out.println("login failed");
		}
		response.sendRedirect("main.jsp");
		//�����ϵ� �����ϵ� ������������ �����ϴ�
	}

}
