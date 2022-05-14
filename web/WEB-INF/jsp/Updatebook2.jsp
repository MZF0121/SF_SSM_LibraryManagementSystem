<%--
  Created by IntelliJ IDEA.
  User: 13596
  Date: 2022/4/26
  Time: 20:21
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
            height: 350px;
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
    </style>
</head>
<body>
<form action="${pageContext.request.contextPath}/Book/upBook"method="post">
<div class="head">
    <button>修改图书</button>
</div>
<div class="zhuti">
            <input type="hidden" name="bid" value="${book123.bid}" ><label id="yonghu"></label>
    <p> 名称:<input type="text" name="bname" value="${book123.bname}"><label id="yonghu"></label></p>
    <p> 价格:<input type="text" name="bprice" value="${book123.bprice}"><label id="yonghu"></label></p>
    <p> 库存:<input type="text" name="bcount" value="${book123.bcount}"><label id="yonghu"></label></p>
    <p> 描述:<input type="text" name="bdescribe" value="${book123.bdescribe}"><label id="yonghu"></label></p>

</div>
<div class="weibu">
    <button><a href="${pageContext.request.contextPath}/SuperAD/BackHome">返回</a></button>
    <button>提交</button>
</div>
</form>
</body>
</html>
