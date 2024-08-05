package pict_admin.web;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@WebServlet("/teamList")
public class TeamListServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 폼 데이터 가져오기
        String idx = request.getParameter("idx");
        String useAt = request.getParameter("use_at");
        String type = request.getParameter("type");

        // 디버깅: 콘솔에 데이터 출력
        System.out.println("Received idx: " + idx);
        System.out.println("Received use_at: " + useAt);
        System.out.println("Received type: " + type);

        // 데이터 저장
        request.setAttribute("idx", idx);
        request.setAttribute("use_at", useAt);
        request.setAttribute("type", type);

        // JSP로 포워딩
        request.getRequestDispatcher("/WEB-INF/jsp/egovframework/pict/admin/team_register.jsp").forward(request, response);
    }
}