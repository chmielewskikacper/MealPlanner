package filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

@WebFilter("/*")
public class FilterUTF implements Filter {
    public void doFilter(ServletRequest request,
                          ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        chain.doFilter(request, response);
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
