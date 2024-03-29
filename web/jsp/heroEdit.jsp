<%--
  Created by IntelliJ IDEA.
  User: zjy
  Date: 2019/11/13
  Time: 15:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>">
<html>

<head>
    <meta charset="UTF-8">
    <title>平民英雄上传</title>
    <link rel="shortcut icon" href="images/index/logo2.png" type="image/x-icon">
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="css/epochModel/epochHeader.css">
    <link rel="stylesheet" href="css/hero/heroEdit/wangEditor.css">
    <link rel="stylesheet" href="//at.alicdn.com/t/font_1495642_hi62fhrv7o5.css">
    <link rel="stylesheet" href="css/index/footer.css">
    <link rel="stylesheet" href="css/hero/heroEdit/edit.css">
</head>

<body>
<header id="header">
    <!-- nav 部分 start -->
    <nav class="clear">
        <div class="logo fl">
            <a href="../index.html" target="self">
                <img src="images/index/logo.svg" alt="宏图logo" width="150" height="60" title="ht">
            </a>
        </div>
        <ul class="nav-list fl">
            <li class="nav-list-link fl ">
                <a href="../index.html" class="nav-list-click">宏图首页</a>
            </li>
            <li class="nav-list-link fl">
                <a href="model.html" class="nav-list-click">时代楷模</a>
                <ol class="nav-list-con">
                    <li class="nav-list-con-item">
                        <a href="#" class="item-intro">新时代楷模</a>
                    </li>
                    <li class="nav-list-con-item">
                        <a href="#" class="item-intro">“双百”人物</a>
                    </li>
                    <li class="nav-list-con-item">
                        <a href="#" class="item-intro">道德模范</a>
                    </li>
                    <li class="nav-list-con-item">
                        <a href="#" class="item-intro">改革先锋</a>
                    </li>
                </ol>
            </li>
            <li class="nav-list-link fl">
                <a href="hotspot.html" class="nav-list-click">当今热点</a>
                <ol class="nav-list-con">
                    <li class="nav-list-con-item">
                        <a href="#" class="item-intro">社会热点</a>
                    </li>
                    <li class="nav-list-con-item">
                        <a href="#" class="item-intro">政治热点</a>
                    </li>
                </ol>
            </li>
            <li class="nav-list-link fl">
                <a href="history.html" class="nav-list-click">铭记历史</a>
            </li>
            <li class="nav-list-link fl">
                <a href="policy.html" class="nav-list-click">最新政策</a>
                <ol class="nav-list-con">
                    <li class="nav-list-con-item">
                        <a href="#" class="item-intro">惠民政策</a>
                    </li>
                    <li class="nav-list-con-item">
                        <a href="#" class="item-intro">法律修订</a>
                    </li>
                </ol>
            </li>
            <li class="nav-list-link fl">
                <a href="district.html" class="nav-list-click">红色老区</a>
            </li>
            <li class="nav-list-link fl">
                <a href="hero.html" class="nav-list-click">平民英雄</a>
            </li>
            <li class="nav-list-link fl">
                <a href="person.html" class="nav-list-click">个人中心</a>
                <ol class="nav-list-con">
                    <li class="nav-list-con-item">
                        <a href="#" class="item-intro">个人资料</a>
                    </li>
                    <li class="nav-list-con-item">
                        <a href="#" class="item-intro">我的收藏</a>
                    </li>
                    <li class="nav-list-con-item">
                        <a href="#" class="item-intro">我的关注</a>
                    </li>
                    <li class="nav-list-con-item">
                        <a href="#" class="item-intro">我的评论</a>
                    </li>
                    <li class="nav-list-con-item">
                        <a href="#" class="item-intro">我的捐赠</a>
                    </li>
                </ol>
            </li>
        </ul>
        <div class="header-serach fl">
            <form action="" method="POST" class="clear">
                <input type="search" id="search" placeholder="搜索..." class="serach-txt fl" />
                <a href="" class="search-btn fr">
                    <i class="iconfont icon-sousuo"></i>
                </a>
            </form>
        </div>
        <div class="nav-user clear">
            <div class="nav-login fl">
                <a href="./login.html">
                    <i class="iconfont icon-denglu"></i>登录</a>
            </div>
            <div class="nav-register fl">
                <a href="./register.html">
                    <i class="iconfont icon-zhuce"></i>注册</a>
            </div>
        </div>
    </nav>
</header>
<div id="div3">
    <p>请输入你要上传平民英雄的内容</p>
</div>
<form method="post" action="InServlet">
    <div id="title">文章题目: <input type="text" name="title" class="ipt" /></div>
    <textarea id="text1" style="width:1000px; height:200px;" hidden="hidden"  name="text12"></textarea>
    <button id="btn1" type="submit">上传</button>
</form>
<!-- fooer start -->
<footer style="position: absolute; top: 520px;">
    <div class="footer-content">
        <img src="images/index/stxlogo.png" alt="" class="footer-content-logo">
        <div class="copyright">
            <span>地址：重庆市合川大学城假日大道1号 | 邮编：401520</span><br>
            <span>Copyright<i class="iconfont icon-copyright"></i>2019<strong>开发小组:Dockers</strong> All rights reserved
              版权所有</span>
        </div>
    </div>
</footer>
<!-- fooer end -->
<script type="text/javascript" src="js/wangEditor.js"></script>
<script type="text/javascript" src="js/wangEditor.min.js.map"></script>
<script type="text/javascript" src="js/upload-img.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
    var E = window.wangEditor;
    editor2 = new E('#div3');
    editor2.customConfig.uploadImgServer = 'UploadServlet';
    var $text1 = $('#text1')
    editor2.customConfig.onchange = function (html) {
        // 监控变化，同步更新到 textarea
        $text1.val(html)
    }
    editor2.create()
    $text1.val(editor2.txt.html())
    document.getElementById('btn1').addEventListener('click', function () {
        // 读取 html
        alert(editor2.txt.html())
    }, false)
</script>
</body>

</html>
