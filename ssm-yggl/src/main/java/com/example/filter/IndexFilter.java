package com.example.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter("/*")
public class IndexFilter  implements Filter {
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request=(HttpServletRequest) servletRequest;
        HttpServletResponse response=(HttpServletResponse) servletResponse;
        String url=request.getRequestURI();
        System.out.println(url);
        if(url.contains("index") || url.contains("log") || url.contains("zc")){
            filterChain.doFilter(request,response);
        }else {
            HttpSession session=request.getSession();
            Object news=session.getAttribute("news");
            if(news==null){
                response.sendRedirect("/index.jsp");
            }else {
                filterChain.doFilter(request,response);
            }

        }
    }
}
