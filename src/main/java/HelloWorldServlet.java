import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet(name = "HelloWorldServlet", urlPatterns = "/hello-world")
public class HelloWorldServlet extends HttpServlet {
    int count = 0;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = request.getParameter("name");
        response.setContentType("text/html");
        count++;
        PrintWriter out = response.getWriter();
//        if (userName.equalsIgnoreCase("reset"))
//        {count = 0; out.println("<h1>Hello, you cheeky monkey! You've discovered how to reset the counter!</h1> <br><p>This page has been viewed " + count + " times...since you reset it!");}
        if(userName != null) {
            out.printf("<h1>Hello, %s!</h1> <br><p>This page has been viewed %d", userName, count);
        } else {
            out.printf("<h1>Hello, World!</h1> <br><p>This page has been viewed %d", count);
        }

    }
}