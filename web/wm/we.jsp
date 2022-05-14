<%--
  Created by IntelliJ IDEA.
  User: 13596
  Date: 2022/4/25
  Time: 20:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" >
<head>
    <meta charset="UTF-8">
    <title>关于我和甜宝</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
    <link rel="stylesheet" href="/CSS/style2.css">

</head>
<body>
<!-- partial:index.partial.html -->
<div class="boxes">
    <div class="box" style="--src: url(/wm/WMPHOTO/1.jpg)"><span>1</span><img src="/wm/WMPHOTO/1.jpg"/></div>
    <div class="box" style="--src: url(/wm/WMPHOTO/2.jpg)"><span>2</span><img src="/wm/WMPHOTO/2.jpg"/></div>
    <div class="box" style="--src: url(/wm/WMPHOTO/3.jpg)"><span>3</span><img src="/wm/WMPHOTO/3.jpg"/></div>
    <div class="box" style="--src: url(/wm/WMPHOTO/4.jpg)"><span>4</span><img src="/wm/WMPHOTO/4.jpg"/></div>
    <div class="box" style="--src: url(/wm/WMPHOTO/5.jpg)"><span>5</span><img src="/wm/WMPHOTO/5.jpg"/></div>
    <div class="box" style="--src: url(/wm/WMPHOTO/6.jpg)"><span>6</span><img src="/wm/WMPHOTO/6.jpg"/></div>
    <div class="box" style="--src: url(/wm/WMPHOTO/7.jpg)"><span>7</span><img src="/wm/WMPHOTO/7.jpg"/></div>
    <div class="box" style="--src: url(/wm/WMPHOTO/8.jpg)"><span>8</span><img src="/wm/WMPHOTO/8.jpg"/></div>
    <div class="box" style="--src: url(/wm/WMPHOTO/9.jpg)"><span>9</span><img src="/wm/WMPHOTO/9.jpg"/></div>
    <div class="box" style="--src: url(/wm/WMPHOTO/10.jpg)"><span>10</span><img src=/wm/WMPHOTO/10.jpg/"></div>
    <div class="controls">
        <button class="next"><span>Previous album</span>
            <svg viewBox="0 0 448 512" width="100" title="Previous Album">
                <path d="M424.4 214.7L72.4 6.6C43.8-10.3 0 6.1 0 47.9V464c0 37.5 40.7 60.1 72.4 41.3l352-208c31.4-18.5 31.5-64.1 0-82.6z"></path>
            </svg>
        </button>
        <button class="prev"><span>Next album</span>
            <svg viewBox="0 0 448 512" width="100" title="Next Album">
                <path d="M424.4 214.7L72.4 6.6C43.8-10.3 0 6.1 0 47.9V464c0 37.5 40.7 60.1 72.4 41.3l352-208c31.4-18.5 31.5-64.1 0-82.6z"></path>
            </svg>
        </button>
    </div>
</div>
<svg class="scroll-icon" viewBox="0 0 24 24">
    <path fill="currentColor" d="M20 6H23L19 2L15 6H18V18H15L19 22L23 18H20V6M9 3.09C11.83 3.57 14 6.04 14 9H9V3.09M14 11V15C14 18.3 11.3 21 8 21S2 18.3 2 15V11H14M7 9H2C2 6.04 4.17 3.57 7 3.09V9Z"></path>
</svg>
<div class="drag-proxy"></div>
<!-- partial -->
<script type="module" src="/js/script2.js"></script>

</body>
</html>

