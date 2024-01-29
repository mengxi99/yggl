<%--
  Created by IntelliJ IDEA.
  User: xgf15
  Date: 2023/7/12
  Time: 21:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员注册</title>
</head>
<body>
   <%-- <form action="/account/zc">
        账号:<input type="text" name="ename"><br>
        密码:<input type="text" name="password"><br>
        <button type="submit">添加</button>
    </form>--%>
   <div class="box">
       <span class="borderLine"></span>
       <form action="/account/zc">
           <h2>注册 in</h2>
           <div class="inputBox">
               <input type="text" name="ename" required>
               <span>Username</span><i></i>
           </div>
           <div class="inputBox">
               <input type="password" name="password" required>
               <span>password</span><i></i>
           </div>
           <div class="links">
               <a href="../index.jsp">Forget Password</a><a href="#">Signup</a>
           </div>
           <input type="submit" value="注册">
       </form>
   </div>
   <style>
       *{
           margin: 0;
           padding: 0;
           font-size: 黑体;
           box-sizing: border-box;
       }
       body{
           display: flex;
           justify-content: center;
           align-items: center;
           min-height: 100vh;
           background: #222;
       }
       .box{
           position: relative;
           width: 380px;
           height: 420px;
           background: #1c1c1c;
           border-radius: 8px;
       }
       .box form{
           position: absolute;
           inset: 4px;
           background: #222;
           padding: 50px 40px;
           border-radius: 8px;
           z-index: 2;
           display: flex;
           flex-direction: column;
       }
       .box form h2{
           color: #fff;
           font-weight: 500;
           text-align: center;
           letter-spacing: 0.1em;
       }
       .box form .inputBox{
           position: relative;
           width: 300px;
           margin-top: 35px;
       }
       .box form .inputBox input{
           position: relative;
           width: 100%;
           padding: 20px 10px 10px;
           background: transparent;
           outline: none;
           border: none;
           box-shadow: none;
           color: #23242a;
           font-size: 1em;
           letter-spacing: 0.05em;
           z-index: 10;
       }
       .box form .inputBox span{
           position: absolute;
           left:0;
           padding-events:none ;
           color: #8f8f8f;
           font-size:1em;
           letter-spacing:0.05em;
       }
       .box form .inputBox input{
           transition: 0.5s;
       }
       .box form .inputBox span{
           transition: 0.5s;
       }
       .box form .inputBox input:valid ~ span,
       .box form .inputBox input:focus ~ span{
           color: #fff;
           font-size: 0.75em;
           transform: translateY(-34px);
       }
       .box form .inputBox i{
           position: absolute;
           left: 0;
           bottom: 0;
           width: 100%;
           height: 2px;
           background: #fff;
           border-radius: 4px;
           overflow: hidden;
           transition: 0.5s;
           pointer-events: none;
       }
       .box form .inputBox input:valid ~ i,
       .box form .inputBox input:focus ~ i{
           height: 44px;
       }
       .box form .links{
           display: flex;
           justify-content: space-between;
       }
       .box form .links a{
           margin: 10px 0;
           font-size: 0.75em;
           color: #8f8f8f;
           text-decoration: none;
       }
       .box form .links a:hover,
       .box form .links a:nth-child(1){
           color: #fff;
       }
       .box form input[type="submit"]{
           border: none;
           outline: none;
           padding: 9px 25px;
           background: #fff;
           cursor: pointer;
           font-size: 0.9em;
           border-radius:4px;
           font-weight: 600;
           width:100px;
           margin-top: 10px;
       }
       .box form input[type="submit"]:active{
           opacity: 0.8;
       }
       .borderLine{
           position: absolute;
           top: 0;
           inset: 0;
       }
       @keyFrames animate{
           0%{
               transform: rotate(0deg);
           }
           100%{
               transform: rotate(360deg);
           }
       }
       .box::before,
       .box::after,
       .borderLine::before,
       .borderLine::after{
           content: "";
           position: absolute;
           top: -50%;
           left: -50%;
           width: 380px;
           height: 420px;
           background: linear-gradient(
                   0deg,transparent,
                   #45f3ff,#45f3ff,#45f3ff);
           z-index: 1;
           transform-origin:bottom right;
           animation: animate 6s linear infinite;
       }
       .box::after{
           animation-delay: -3s;
       }
       .borderLine::before{
           background: linear-gradient(
                   0deg,transparent,transparent,
                   #ff2770,#ff2770,#ff2770);
           animation-delay: -1.5s;
       }
       .borderLine::after{
           background: linear-gradient(
                   0deg,transparent,transparent,
                   #ff2770,#ff2770,#ff2770);
           animation-delay: -4.5s;
       }
       .box{
           overflow: hidden;
       }
   </style>
</body>
</html>
