<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.pojo.Emps" %>
<%@ page import="com.fasterxml.jackson.databind.ObjectMapper" %><%--
  Created by IntelliJ IDEA.
  User: xgf15
  Date: 2023/6/29
  Time: 17:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>员工管理</title>
</head>
<script type="text/javascript">
    function accountDelete(Id){
        if(confirm("确定要删除id为"+ Id +"的该条数据吗？")){
            window.location.href = "../account/delAccountById?id="+Id;
        }
    }
    function updateModelShow(news_json){
        //展示新增模态框 输入数据
        document.getElementById("updateModel").style.display = "block";
        document.getElementById("id").value = news_json.id;
        document.getElementById("ename").value = news_json.ename;
        document.getElementById("password").value = news_json.password;
        document.getElementById("job").value = news_json.job;
        document.getElementById("hiredate").value = news_json.hiredate;
        document.getElementById("age").value = news_json.age;
        document.getElementById("sex").value = news_json.sex;
        document.getElementById("sal").value = news_json.sal;

    }
    function updateModelClose(){
        //展示新增模态框 输入数据
        document.getElementById("updateModel").style.display = "none";
    }
</script>
<body>
    <%
        ArrayList<Emps> array_info=(ArrayList<Emps>) request.getAttribute("array_info");
    %>
    <div  style="margin-left: 350px;margin-top: 20px">
        <form  action="../account/selectBy">
            姓名<input type="text" name="ename">
            职位<input type="text" name="job">
            <input type="submit" value="查询">
        </form>
        <%
            String news=(String) session.getAttribute("news");
            if(news == null){
                news="未登录";
            }
        %>
        <span style="color: #ff2770;margin-left: 440px;margin-top: 10px"><%=news %>已登录</span>
        <a href="/account/zx" style="color: lightblue;margin-left: 490px;margin-top: 10px">注销</a>
    </div>


    <table border="1" style="margin: 0 auto">
        <tr>
            <td>编号</td>
            <td>姓名</td>
            <td>密码</td>
            <td>职位</td>
            <td>时间</td>
            <td>年龄</td>
            <td>性别</td>
            <td>工资</td>
            <td>编辑</td>
        </tr>
        <%
            if(array_info!=null){
                for(Emps emps : array_info){
                    out.print("<tr>");
                    out.print("<td>"+ emps.getId() +"</td>");
                    out.print("<td>"+ emps.getEname() +"</td>");
                    out.print("<td>"+ emps.getPassword() +"</td>");
                    out.print("<td>"+ emps.getJob() +"</td>");
                    out.print("<td>"+ emps.getHiredate() +"</td>");
                    out.print("<td>"+ emps.getAge() +"</td>");
                    out.print("<td>"+ emps.getSex() +"</td>");
                    out.print("<td>"+ emps.getSal() +"</td>");


                    //创建Jackson插件的ObjectMapper对象
                    ObjectMapper mapper = new ObjectMapper();
                    //将一个Java对象转换成JSON
                    String news_json = mapper.writeValueAsString(emps);
                    System.out.println(news_json);

                    out.print("<td><input type='button' value='修改' onclick='updateModelShow("+ news_json +")'>");
                    out.print("<input type='button' value='删除' onclick='accountDelete("+ emps.getId() +")'></td>");



                    out.print("<tr>");
                }
            }
        %>
        <tr>
            <td colspan="10" style="text-align: center">
                <a href="../addaccount.jsp" style="color: springgreen">添加</a>
            </td>
        </tr>
        <%--<tr>
            <td colspan="10">
                <a href="/account/limit?page=1&pagesize=3">首页</a>
                <a href="/account/">上一页</a>
                <a href="">下一页</a>
                <a href="">尾页</a>
            </td>
        </tr>--%>
        <tr>
            <td colspan="10">
                <a href="/account/limit?page=1&pagesize=3">第一页</a>
                <a href="/account/limit?page=2&pagesize=3">第二页</a>
                <a href="/account/limit?page=3&pagesize=3">第三页</a>
                <a href="/account/limit?page=4&pagesize=3">第四页</a>
            </td>
        </tr>
    </table>

    <div style="display:none; background: darkolivegreen; position:absolute; top:40%; left:40%"  id="updateModel">
        修改<span onclick="updateModelClose()">×</span>
        <form action="../account/update">
            <input type="text" name="id" id="id" style="display:none" ><br>
            姓名<input type="text" name="ename" id="ename"><br>
            密码<input type="text" name="password" id="password"><br>
            职位<input type="text" name="job" id="job"><br>
            时间<input type="date" name="hiredate" id="hiredate"><br>
            年龄<input type="text" name="age" id="age"><br>
            性别<input type="text" name="sex" id="sex"><br>
            工资<input type="text" name="sal" id="sal"><br>
            <input type="submit" value="修改">
        </form>
    </div>

</body>
</html>
