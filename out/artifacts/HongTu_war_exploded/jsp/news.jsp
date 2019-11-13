<%@ page import="com.Ht.Model.tm_info" %><%--
  Created by IntelliJ IDEA.
  User: zjy
  Date: 2019/11/11
  Time: 19:02
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
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>新闻</title>
    <link rel="shortcut icon" href="images/index/logo2.png" type="image/x-icon">
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="css/epochModel/epochHeader.css">
    <link rel="stylesheet" href="//at.alicdn.com/t/font_1495642_hi62fhrv7o5.css">
    <link rel="stylesheet" href="css/news/newsMain.css">
</head>
<body>
<div id="container">
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
                    <a href="policy.html" class="nav-list-click">时代楷模</a>
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
    <article id="article">
        <div class="guide">
            <a href="../index.html">宏图首页</a>
            <span class="jiantou">>></span>
            <span>最新政策</span>
            <span class="jiantou">>></span>
            <span>惠民政策</span>
        </div>
        <div class="art-title">
            <p class="art-title-top">
                <!-- 标题 -->

            </p>
            <span class="art-title-time">
              <!-- 时间 -->

            </span>
        </div>
        <div class="art-content">
            <!-- 文章内容 -->

        </div>


    </article>
</div>
</body>
</html>
