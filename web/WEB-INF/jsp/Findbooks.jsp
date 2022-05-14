<%--
  Created by IntelliJ IDEA.
  User: 13596
  Date: 2022/4/26
  Time: 19:24
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

        html{
            height: 100%;
            width: 100%;
            overflow: hidden;
            background: url(/image/m.jpg) no-repeat 0px 0px;
            background-size: 100% 100%;
            /* -moz-background-size: 100% 100%; */
        }
        .head button{
            border-color: cornsilk;
            background-color: rgba(100, 149, 237, .7);
            color: aliceblue;
            border-style: hidden;
            border-radius: 10px;
            width: 150px;
            height: 40px;
            font-size: 16px;

        }
        .head{
            text-align: center;
            margin-top: 50px;
        }
        .zhuti{
            /* border: 1px solid pink; */
            width: 350px;
            height: 50px;
            margin: 40px auto;
        }
        input {
            margin-left: 15px;
            border-radius: 50px;
            border-style: hidden;
            height: 39px;
            width: 260px;
            background-color: rgba(216, 191, 216, 0.5);
            outline: none;
            color: #f0edf3;
            padding-left: 10px;}
        p {
            margin-top: 30px;
            margin-left: -2px;
            /* color: azure; */
            /* color: blueviolet; */
            color:rgba(100, 149, 237, .7);
        }
        .weibu button{
            border-color: cornsilk;
            background-color: rgba(100, 149, 237, .7);
            color: aliceblue;
            border-style: hidden;
            border-radius: 10px;
            width: 150px;
            height: 40px;
            font-size: 16px;

        }
        .weibu{

            text-align: center;
            margin-top: 10px;
        }
        .weibu button a{
            text-decoration: none;
            color:rgba(100, 149, 237, .7);
        }
    </style>
</head>
<body>
<form action="${pageContext.request.contextPath}/Book/Sbname" method="post">
<div class="head">
    <button>查找图书</button>
</div>
<div class="zhuti">
    <p> 书名:<input type="text" placeholder="请输入查阅的书籍" name="bname"><label id="yonghu"></label></p>

</div>
<div class="weibu">
    <button><a href="${pageContext.request.contextPath}/SuperAD/BackHome">返回</a></button>

    <button>提交</button>
</div>
</form>
</body>
</html>