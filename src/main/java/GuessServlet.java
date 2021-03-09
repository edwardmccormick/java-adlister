import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Random;

@WebServlet(name = "GuessServlet", urlPatterns = "/guess")
public class GuessServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        request.getRequestDispatcher("guess.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        int number = Integer.parseInt(request.getParameter("number"));
         Random ran = new Random();
        int correct = ran.nextInt(3)+1;
        if (number < 1 | number > 3) {
            response.sendRedirect("/guess");
        }
        else if (number != correct) {
            response.sendRedirect("/incorrect?number="+number+"&correct="+correct);
        }
        else if (number == correct) {
            response.sendRedirect("/correct?number="+number+"&correct="+correct);
        }

    }
}
