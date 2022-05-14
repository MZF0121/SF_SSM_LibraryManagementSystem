<%--
  Created by IntelliJ IDEA.
  User: 13596
  Date: 2022/4/11
  Time: 20:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
 <%-- <body>
 <h3>
   <a href="${pageContext.request.contextPath}/Book/addBook">点击添加书</a>
 </h3>

  </body>--%>

 <!DOCTYPE html>
  <html lang="en">
  <head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>登录首页</title>
      <style>
          *{
              margin: 0;
              padding: 0;
          }
          html{
              height: 100%;
              width: 100%;
              overflow: hidden;
              background: url(/image/1.gif) no-repeat 0px 0px;
              background-size: 100% 100%;
              /* -moz-background-size: 100% 100%; */
          }
          body{
              display: flex;
              align-items: center;
              /* 纵轴上居中 */
              /* text-align: center; */
              justify-content: center;
              /* 水平居中 */
              height: 100%;
          }
          .login{
              width: 30%;
              display: flex;
              justify-content: center;
              align-items: center;
              height: 300px;
              background-color: rgba(75, 81, 95, 0.3);
              box-shadow: 7px 7px 17px rgba(52, 56, 66, 0.5);
              /* border-radius:100px; */
          }
          p {
              margin-top: 30px;
              margin-left: 20px;
              color: azure;
          }

          input {
              margin-left: 15px;
              border-radius: 50px;
              border-style: hidden;
              height: 30px;
              width: 140px;
              background-color: rgba(216, 191, 216, 0.5);
              /*outline: none;*/
              color: #f0edf3;
              padding-left: 10px;
          }
          h2{
              text-align: center;
              color: aliceblue;

          }
          #yonghu{
              margin-left: 50px;
              color: red;
          }
          .bu{
              border-color: cornsilk;
              background-color: rgba(100, 149, 237, .7);
              color: aliceblue;
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
      </style>

  </head>
  <body>
  <div class="login">
      <form action="${pageContext.request.contextPath}/User/Login" id="form" method="post">
          <h2>登录</h2>
          <p> 用户名:<input type="text" name="uphone"><label id="yonghu"></label></p>
          <p>密&nbsp;&nbsp;&nbsp;码:<input type="password" name="upassword"><label id="mima"></label></p>
          <div class="div1">
              <input type="submit"  value="登录" class="bu">
              <button class="bu"> <a href="register.jsp" target="_blank">注册</a></button>

          </div>
      </form>

  </div>




  <!-- <script>
      var input1=document.getElementById('in2');
      input1.onclick{

      }
  </script> -->
  </body>
  </html>
</html>
