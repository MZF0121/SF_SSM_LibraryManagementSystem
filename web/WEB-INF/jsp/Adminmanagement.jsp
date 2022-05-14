<%--
  Created by IntelliJ IDEA.
  User: 13596
  Date: 2022/4/26
  Time: 18:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        .wrapper{
            width: 1240px;
            margin: 0 auto;
        }
        .shortcut{
            height: 52px;
            /* background-color: cadetblue; */
            background-color:#cd4364;
            /* position: fixed; */
            top: 0;
        }
        .shortcut .wrapper{
            height: 52px;
            background-color:#cd4364;


            /* background-color: cadetblue; */
        }
        .shortcut .wrapper ul{
            list-style: none;
            float: right;
        }
        .shortcut .wrapper li{
            float: left;
            line-height: 52px;
        }
        .shortcut .wrapper a{
            padding: 0 16px;
            border-right: 1px solid #666;
            font-size: 14px;
            color: white;
        }
        html{
            height: 100%;
            width: 100%;
            overflow: hidden;
            background: url(/image/2.gif) no-repeat 0px 0px;
            background-size: 100% 100%;
            /* -moz-background-size: 100% 100%; */
        }
        h1{
            margin-top: 480px;
            margin-left: 600px;
        }
        .div2 h1 a{
            text-decoration: none;

        }
    </style>
</head>
<body>
<div class="shortcut">
    <div class="wrapper">
        <ul>
            <li><a href="${pageContext.request.contextPath}/SuperAD/BackHome">首页</a></li>
            <li><a href="${pageContext.request.contextPath}/Book/AllBookAll">图书信息</a></li>
            <li><a href="${pageContext.request.contextPath}/SuperAD/FindBook">查找图书</a></li>
            <li><a href="${pageContext.request.contextPath}/Book/Toub">更新图书</a></li>
            <li><a href="${pageContext.request.contextPath}/Book/AddBook1">增添图书</a></li>
            <li><a href="${pageContext.request.contextPath}/Book/DeleBook1">删除图书</a></li>
        </ul>

    </div>
</div>

<div class="div2">
    <h1><a href="">欢迎来到管理员页面</a></h1>
</div>
</body>
</html>
