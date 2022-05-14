<%--
  Created by IntelliJ IDEA.
  User: 13596
  Date: 2022/4/24
  Time: 19:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
    * {
        margin: 0;
        padding: 0;
        /* 內减模式 */
        box-sizing: border-box;
    }

    /* body {
        /* background-color: darkkhaki; */


    /* 版心 */
    .wrapper {
        width: 1200px;
        margin: 0 auto;
        /* background-color: cadetblue; */
    }

    /* 头部 */
    .header {
        height: 42px;
        /* margin-top: 30px;
margin-bottom: 30px; */
        /* margin: 30px auto; */
        margin: 10px auto;
    }

    button {
        float: left;
    }

    .search {
        float: left;
        margin-left: 59px;
        width: 412px;
        height: 40px;
        /* border: 1px solid #00a4ff; */
    }

    .search input {
        float: left;
        padding-left: 20px;
        /* 左右加一起的尺寸要小于等于410 */
        /* width: 360px;
        height: 38px; */
        /* border: 1px; */
    }

    /* 控制placeholder的样式 */
    .search input::placeholder {
        font-size: 14px;
        color: #bfbfbf;
    }

    .search button {
        float: left;
        width: 50px;
        height: 38px;
        background-color: black;
        color: #fff;
        /* background-image: url(./imgs/btn.png); */
        border: 0;
        font-weight: 500;
        font-size: 18px;
    }

    .user {
        float: right;
        margin-right: 35px;
        height: 42px;
        line-height: 42px;
    }

    .user img {
        /* 调节图片垂直对齐方式, middle:居中 */
        vertical-align: middle;
    }

    .user a {
        text-decoration: none;
        color: #fff;
    }

    .but1 {
        width: 80px;
        height: 40px;
        margin-right: 100px;
    }

    .but1 a {
        text-decoration: none;
        color: cadetblue;
    }

    .mar {
        width: 100%;
        height: 50px;
        background-color: aqua;
    }

    h3 {
        float: left;
        /* color: cadetblue; */
        color: #fff;
    }

    .banner {
        height: 420px;
        margin-top: 30px;
    }

    .banner .wrapper {
        height: 420px;
        background-image: url(/image/10.webp);
    }

    .banner .left {
        float: left;

        padding: 0 20px;

        width: 190px;
        height: 420px;
        background-color: rgba(0, 0, 0, 0.3);

        /* 行高属于控制文字的属性, 能继承 */
        line-height: 44px;
    }

    .banner .left span {
        float: right;
    }

    .banner .left a {
        font-size: 14px;
        color: #fff;
    }

    .banner .left a:hover {
        color: #00b4ff;
    }



    /* 精品课程 */
    .box {
        margin-top: 35px;
    }

    .box .title {
        height: 40px;
    }

    .box .title h2 {
        float: left;
        font-size: 20px;
        /* color: #494949; */
        /* color: cadetblue; */
        font-weight: 500;
        color: #fff;
    }

    .box .content li {
        float: left;
        margin-right: 15px;
        margin-bottom: 15px;
        width: 228px;
        height: 270px;
        background-color: #fff;
        text-decoration: none;
    }

    .box .content li:nth-child(4n) {
        margin-right: 0;
    }

    .shuji ul {
        text-decoration: none;
        float: left;
        margin-right: 40px;

    }

    .shuji1 ul {
        text-decoration: none;
        float: left;
        margin-right: 40px;
        margin-top: 40px;

    }

    .shiji li:nth-child(4n) {
        margin-right: 0;
    }

    .shiji1 li:nth-child(4n) {
        margin-right: 0;
    }

    .shuji img {
        width: 251px;
        height: 310px;
    }

    .shuji1 img {
        width: 251px;
        height: 310px;
    }
    html{
        height: 100%;
        width: 100%;
        /* overflow: hidden; */
        background: url(/image/4.gif) no-repeat 0px 0px;
        background-size: 100% 100%;
        /* -moz-background-size: 100% 100%; */
        background-size: cover;
        background-attachment: fixed;
    }
    .search input{

        margin-left: 15px;
        border-radius: 40px;
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
    .header wrapper{
        position: fixed;
        top: 0;
    }
    </style>
</head>

<body>
<div class="header wrapper">
    <h3>
        欢迎来到图书世界
    </h3>

    <!-- <button class="but1">
        <a href="#">全部书籍</a>
    </button> -->


    <!-- 导航 -->
    <!-- <div class="nav">
        <ul>
            <li><a href="#">首页</a></li>
            <li><a href="#">课程</a></li>
            <li><a href="#">职业规划</a></li>
        </ul>
    </div> -->
    <!-- 搜索 -->
    <div class="search">
        <form action="${pageContext.request.contextPath}/Book/Sbname" method="get">
            <input type="text" placeholder="输入关键词" name="bname">
            <button>搜索</button>

        </form>

    </div>
    <!-- 用户 -->
    <div class="user">
        <img src="/image/user.png" alt="">
        <a href="/superadmin.jsp" target="_blank"> 超级管理员</a>

    </div>
</div>
<div class="banner">
    <div class="wrapper">
        <div class="left">
            <ul>
                <li><a href="/wm/jdjs.jsp" target="_blank">简单介绍<span>></span></a></li>
                <li><a href="/wm/sjtj.jsp" target="_blank">书籍推荐<span>></span></a></li>
                <li><a href="${pageContext.request.contextPath}/Book/AllBookAll" target="_blank">全部图书<span>></span></a></li>
                <li><a href="/wm/we.jsp" target="_blank">关于我们<span>></span></a></li>
            </ul>
        </div>
    </div>
</div>


<div class="box wrapper">
    <div class="title">
        <h2>精品推荐</h2>

    </div>

    <div class="shuji">

        <ul>
            <li><img src="/image/1.webp" alt=""></li>
        </ul>
        <ul>
            <li><img src="/image/2.webp" alt=""></li>
        </ul>
        <ul>
            <li><img src="/image/3.webp" alt=""></li>
        </ul>
        <ul>
            <li><img src="/image/4.webp" alt=""></li>
        </ul>
    </div>
    <div class="shuji1">

        <ul>
            <li><img src="/image/5.webp" alt=""></li>
        </ul>
        <ul>
        <li><img src="/image/6.webp" alt=""></li>
        </ul>
        <ul>
            <li><img src="/image/7.webp" alt=""></li>
        </ul>
        <ul>
            <li><img src="/image/8.webp" alt=""></li>A
        </ul>
    </div>
</div>

</body>

</html>
</body>
</html>
