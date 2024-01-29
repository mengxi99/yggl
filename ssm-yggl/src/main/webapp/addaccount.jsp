<%--
  Created by IntelliJ IDEA.
  User: xgf15
  Date: 2023/7/10
  Time: 16:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加员工</title>
</head>
<body>
    <form action="/account/addAccount">
       姓名:<input type="text" name="ename"><br>
        密码:<input type="text" name="password"><br>
        职位:<input type="text" name="job"><br>
        时间:<input type="date" name="hiredate"><br>
        年龄:<input type="text" name="age"><br>
        性别:<input type="text" name="sex"><br>
        工资:<input type="text" name="sal"><br>
        <button type="submit">添加</button>
    </form>
</body>
</html>
