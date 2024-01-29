package com.example.controller;

import com.example.pojo.Emps;
import com.example.service.impl.AccountService;
import com.example.util.Params;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.lang.model.SourceVersion;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("account")
public class AccountController {
    @Autowired
    AccountService accountService;
    @RequestMapping("/selectBy")
    public String selectBy(HttpServletRequest request,String ename,String job) throws Exception{
        request.setAttribute("array_info",accountService.selectBy(ename,job));

        return "../account.jsp";
    }
    @RequestMapping("/select")
    public String select(HttpServletRequest request) throws Exception{
        request.setAttribute("array_info",accountService.selectAll());

        return "../account.jsp";
    }
    @RequestMapping("log")
    public void log(String ename, String password,HttpServletRequest request, HttpServletResponse response) throws IOException {

        String news=accountService.log(ename,password);
        response.setContentType("text/html;charset=utf-8");
        HttpSession session=request.getSession();
        if(news!=null){
//            return "select";
//            HttpSession session=request.getSession();
            session.setAttribute("news",news);
//            response.getWriter().print("<script>location.href='select'</script>");
            response.sendRedirect("limit?page=1&pagesize=3");
        }else {
//            return "redirect:../index.jsp";
//            response.getWriter().print("<script>alert('账号或密码错误');location.href='../index.jsp'</script>");
//            HttpSession session2=request.getSession();
            session.setAttribute("error","账号或密码错误，请重新登录！");
//            response.getWriter().print("<script>location.href='../index.jsp'</script>");
            response.sendRedirect("../index.jsp");

        }

    }
    @RequestMapping("/addAccount")
    public String addAccount(Emps emps) throws Exception{
        Integer i=accountService.addAccount(emps);
        return "redirect:/account/limit?page=1&pagesize=3";
    }
    @RequestMapping("/delAccountById")
    public String delAccountById(Integer id){
        Integer i=accountService.delAccountById(id);
        return "redirect:/account/limit?page=1&pagesize=3";
    }
    @RequestMapping("/update")
    public String update(Emps emps,String id,String ename,String password,String job,String hiredate,String age,String sex, String sal){
        emps.setId(Integer.parseInt(id));
        emps.setEname(ename);
        emps.setPassword(password);
        emps.setJob(job);
        emps.setHiredate(hiredate);
        emps.setAge(Integer.parseInt(age));
        emps.setSex(sex);
        emps.setSal(sal);

        if( accountService.update(emps)>0){
            return "redirect:/account/limit?page=1&pagesize=3";
        }
        return "redirect:/account/limit?page=1&pagesize=3";

    }
    @RequestMapping("zc")
    public String zc(Emps emps) throws  Exception{
        Integer i=accountService.zc(emps);
        return "redirect:../index.jsp";
    }
    @RequestMapping("zx")
    public String zx(HttpServletRequest request) throws Exception{
        request.getSession().removeAttribute("news");
        return "redirect:../index.jsp";
    }
    //分页查询
    @RequestMapping("limit")
    public Object limit( HttpServletRequest request,@RequestParam(value = "page") Integer page, @RequestParam(value = "pagesize") Integer pagesize){
//        Map<String,Object> map=new HashMap();
//        List<Emps>array_info=accountService.selectEmpsByLimit((page-1)*pagesize,pagesize);
        request.setAttribute("array_info",accountService.selectEmpsByLimit((page-1)*pagesize,pagesize));
//        map.put("array_info",array_info);
        return "../account.jsp";
    }
 /*   @RequestMapping("selectAllPage")
    public String selectAllPage(Params params, Model model){
        System.out.println("params="+params);
        ArrayList<Emps> empsList= accountService.selectAll(params);
        PageInfo<Emps> pageInfo=new PageInfo<>(empsList);
        model.addAttribute("array_info",pageInfo);
        System.out.println("pageInfo="+pageInfo);
        return "../account.jsp";
    }*/

}
