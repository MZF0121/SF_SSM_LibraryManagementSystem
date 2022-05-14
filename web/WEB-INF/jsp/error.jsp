<%--
  Created by IntelliJ IDEA.
  User: 13596
  Date: 2022/4/25
  Time: 0:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<script type="text/javascript">
    function out(sec){
        var v = document.getElementById("h1");
        if(--sec>0){
            setTimeout("out("+sec+")", 1000);
        }
        v.innerHTML=sec;
    }
</script>
<body onload="out(6)">
<h4 align="center">${msg}<span></span></h4>
<h4 align="center">稍等..自动返回  <span id="h1"></span></h4>
<%response.setHeader("Refresh", "5, URL=/index.jsp"); %>
</body>
</html>
