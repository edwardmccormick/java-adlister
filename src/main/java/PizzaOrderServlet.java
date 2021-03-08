import javax.servlet.ServletException;
        import javax.servlet.annotation.WebServlet;
        import javax.servlet.http.HttpServlet;
        import javax.servlet.http.HttpServletRequest;
        import javax.servlet.http.HttpServletResponse;
        import java.io.IOException;

@WebServlet(name = "PizzaOrderServlet", urlPatterns = "/pizza-order")
public class PizzaOrderServlet extends HttpServlet{

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
//        String crust = request.getParameter("crust");
//        request.setAttribute("crust", crust);
//        System.out.println("crust = " + crust);
//        String sauce = request.getParameter("sauce");
//        request.setAttribute("sauce", sauce);
//        System.out.println("sauce :" + sauce);

//        request.setAttribute("name", request.getParameter("name"));  // The same but different.
        request.getRequestDispatcher("pizza-order.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        String crust = request.getParameter("crust");
        request.setAttribute("crust", crust);
        System.out.println("crust = " + crust);
        String sauce = request.getParameter("sauce");
        request.setAttribute("sauce", sauce);
        System.out.println("sauce :" + sauce);
        request.getRequestDispatcher("pizza-order.jsp").forward(request, response);
        String beef = request.getParameter("beef");
        request.setAttribute("beef", beef);
        System.out.println("beef: " + beef);
    }

}