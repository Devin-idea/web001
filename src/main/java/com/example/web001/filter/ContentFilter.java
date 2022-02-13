package com.example.web001.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

@WebFilter("/content")
public class ContentFilter implements Filter {

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        String content = servletRequest.getParameter("content");
        // 去掉敏感词
        content = content.replaceAll("爱","%%");
        servletRequest.setAttribute("content",content);
        filterChain.doFilter(servletRequest, servletResponse);
    }
}
