<%--
  Created by IntelliJ IDEA.
  User: 13596
  Date: 2022/4/24
  Time: 22:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>注册页面</title>

    <style>
        body{
            color: cadetblue;
        }
        html{
            height: 100%;
            width: 100%;
            overflow: hidden;
            background: url(/image/1.gif) no-repeat 0px 0px;
            background-size: 100% 100%;
        }
        form{
            /* background-color: cadetblue;
            opacity: 0.3; */
            /* width: 600px;
            height: 800px; */
            /* align-items: center;
            justify-content: center; */
            background-color: rgba(75, 81, 95, 0.2);
            margin: auto;
            margin-top: 150px;
            width: 500px;
            height: 100%;



        }
        fieldset{

            border: none;
            /* border-radius: 2px; */

            /* overflow: hidden; */
            /* padding: 0 .625em; */
        }

        label{
            cursor: pointer;
            display: inline-block;
            padding: 3px 6px;
            text-align: right;
            width: 150px;
            vertical-align: top;
        }

        a{
            text-decoration: none;
            /* background-color: darkgoldenrod; */
            color: coral;
        }
        #but2{
            /* color: deeppink; */
            color: coral;
        }
        .in1{
            margin-left: 15px;
            border-radius: 50px;
            border-style: hidden;
            height: 30px;
            width: 140px;
            background-color: rgba(216,191,216,0.5);
            outline: none;
            color: dimgray;
            padding-left: 10px;
        }
        .in2{
            margin-left: 15px;
            border-radius: 50px;
            border-style: hidden;
            height: 15px;
            width: 30px;

            outline: none;
            color: #f0edf3;

        }
        .bu{
            border-color: cornsilk;
            background-color: rgba(100,149,237,.7);
            color:aliceblue;
            border-style: hidden;
            border-radius: 10px;
            width: 100px;
            height: 31px;
            font-size: 16px;
        }
        .div1{
            text-align: center;
            margin-top: 30px;

        }
        .bu a{
            text-decoration: none;
            color: aliceblue;
        }
        #but2{
            color: aliceblue;
        }
    </style>
</head>
<body>
<form action="${pageContext.request.contextPath}/User/AddUser">
    <fieldset>
        <label >用户名:</label>
        <input type="text" placeholder="请输入用户名" id="name" name="uname" class="in1">
        <br>
        <br>
        <label > 密码:</label>

        <input type="text" placeholder="请输入密码" id="pa" name="upassword" class="in1">

        <br>
        <br>


        <label >性别:</label>
        <input type="radio" name="usex" value="男" class="in2"> 男
        <input type="radio" name="usex" value="女" class="in2"> 女
        <br>
        <br>
        <label >年龄:</label>

        <label><input type="text" placeholder="请输入年龄" id="nian" name="uage" class="in1"></label>

        <br>
        <br>
        <label> 手机号:</label>
        <label><input type="text" placeholder="请输入手机号" id="phone" name="uphone" class="in1"></label>

        <br>
        <br>


        <label> 地址:</label>
        <input type="text" placeholder="请输入所在地" id="adress" name="uaddress" class="in1">
        <br>
        <br>
        <div class="div1">
            <label > <button class="bu">
                <a href="index.jsp">返回</a>
            </button>
            </label>
            <label > <button id="but2" class="bu">立即注册</button>
            </label>
        </div>



    </fieldset>

</form>
<script>

    var oBtn2=document.getElementById('but2');

    oBtn2.onclick=function(){

        alert('注册成功')
    }
    function check()
    {
        var name1=document.getElementById('name');
        var pa1=document.getElementById('pa');
        var nian1=document.getElementById('nian');
        var phone1=document.getElementById('phone');
        var adress1=document.getElementById('adress');
        if(name1=="")//如果用户输入的用户名为空
        {
            alert("用户名为空");
            return false;
        }
        else
        {
            if(pa1=="")
            {
                alert("密码为空");
                return false;
            }
            else
            {
                if(nian1=="")
                {
                    alert("年龄为空");
                    return false;
                }
                else
                {
                    if(phone1=="")
                    {
                        alert("联系方式为空");
                        return false;
                    }
                    else{
                        if(adress1=="")
                        {
                            alert("地址为空");
                            return false;
                        }

                    }
                }
            }
        }
    }
</script>
</body>
</html>
</body>
</html>
