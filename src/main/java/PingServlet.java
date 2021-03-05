//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//import java.io.PrintWriter;
//
//@WebServlet(name = "PingServlet", urlPatterns = "/ping")
//public class HelloWorldServlet extends HttpServlet {
//int count = 0;
//
//@Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String userName = request.getParameter("name");
//        response.setContentType("text/html");
//        count++;
//        PrintWriter out = response.getWriter();
//        if (userName.equalsIgnoreCase("reset"))
//        {count = 0; out.println("<h1>Hey you dropped the ball!</h1><br><a href="http://localhost:8080/pong">Pong</a>  <br><p>You've been stuck here " + count + " times...since you reset it!");}
//        else if(userName != null) {
//            out.printf("<h1>Hello, %s!</h1> <br><p>This page has been viewed %d", userName, count);
//        } else {
//            out.printf("<h1>Hello, World!</h1> <br><p>This page has been viewed %d", count);
//        }
//
//    }
//}