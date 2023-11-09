package filter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import service.LoginService;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebFilter("/*")
public class AdminFilter implements Filter {

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        List<String> blockedAddresed = new ArrayList<>();
        blockedAddresed.add("/login");
        blockedAddresed.add("/landingPage");
        blockedAddresed.add("/aboutApplication");
        blockedAddresed.add("/contact");
        blockedAddresed.add("/register");
        List<String> blockedAddresed2 = new ArrayList<>();
        blockedAddresed2.add("/appDashBoard");
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httResponse = (HttpServletResponse) response;
        HttpSession session = httpRequest.getSession();
        String loggedInUsername = (String) session.getAttribute("loggedInEmail");

        if (loggedInUsername != null) {
            // Użytkownik jest zalogowany, wykonaj następne filtry lub żądanie
            if(blockedAddresed.contains(((HttpServletRequest) request).getServletPath())){
                //jak pacjent próbuje się zalogować to przenosimy go na główną stronę
                httResponse.sendRedirect(httpRequest.getContextPath() + "/appDashBoard");
            }
            chain.doFilter(request, response);
        }else {
            if (blockedAddresed2.contains(((HttpServletRequest) request).getServletPath())) {
                httResponse.sendRedirect(httpRequest.getContextPath() + "/login");
            }
            else {
                chain.doFilter(request, response);
            }
        }
    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // Inicjalizacja filtru
    }

    @Override
    public void destroy() {
        // Zwalnianie zasobów filtru
    }
}
