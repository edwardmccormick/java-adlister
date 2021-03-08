import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "GuessServlet", urlPatterns = "/guess")
public class GuessServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        request.getRequestDispatcher("guess.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        int number = Integer.parseInt(request.getParameter("number"));
        int correct = 2;
//        response.getWriter().println("<h1>Great choice, picking" + color + ", let's see it!</h1>");
//        response.sendRedirect("/viewcolor?color=" + color + "");
        if (number < 1 | number > 3) {
            response.sendRedirect("/viewcolor");
        }
        else if (number == 1) {
            response.sendRedirect("/incorrect");
        }
        else if (number == 2) {
            response.sendRedirect("/correct");
        }
        else if (number == 3) {
            response.sendRedirect("/incorrect");
        }
    }
}
