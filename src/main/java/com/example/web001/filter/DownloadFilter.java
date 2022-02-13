package com.example.web001.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.PageContext;
import java.io.IOException;
@WebFilter("/download.jsp")
public class DownloadFilter implements Filter {
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        PageContext pageContext;
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpSession session = request.getSession();
        String username = (String) session.getAttribute("username");
        if (username != null){
            filterChain.doFilter(servletRequest, servletResponse);
        }else {
            HttpServletResponse response = (HttpServletResponse) servletResponse;
            response.sendRedirect("/login.jsp");
        }
    }
}
