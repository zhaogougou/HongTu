package Filter;

import javax.servlet.*;
import java.io.IOException;

public class CharacterFilter implements Filter{

    @Override
    public void destroy() {
// TODO Auto-generated method stub

    }

    @Override
    public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2)
            throws IOException, ServletException {


// 对request、response进行一些预处理
        arg0.setCharacterEncoding("utf-8");
        arg1.setCharacterEncoding("utf-8");
        arg2.doFilter(arg0, arg1);

    }

    @Override
    public void init(FilterConfig arg0) throws ServletException {
// TODO Auto-generated method stub
    }
}
