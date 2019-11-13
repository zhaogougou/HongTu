<%--
  Created by IntelliJ IDEA.
  User: zjy
  Date: 2019/11/12
  Time: 19:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>">
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>个人中心</title>
    <link rel="shortcut icon" href="images/index/logo2.png" type="image/x-icon">
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="//at.alicdn.com/t/font_1495642_j2nqpwvf8qn.css">
    <link rel="stylesheet" href="css/person.css">
    <link rel="stylesheet" href="css/epochModel/epochHeader.css">
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
                <a href="./model.html" class="nav-list-click">时代楷模</a>
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

<!-- main start -->
<div id="wrap">
    <ul>
        <li class="con-list">
            <i class="iconfont icon-wodexinxi"></i>
            <span>个人资料</span>
        </li>
        <li class="con-list">
            <i class="iconfont icon-shoucang"></i>
            <span>我的收藏</span>
        </li>
        <li class="con-list">
            <i class="iconfont icon-wodeguanzhu"></i>
            <span>我的关注</span>
        </li>
        <li class="con-list">
            <i class="iconfont icon-wodepinglun"></i>
            <span>我的评论</span>
        </li>
    </ul>
    <ol>
        <li class="cont show">
            <div class="cont-title">
                <p class="cont-txt">个人资料</p>
            </div>
            <div class="cont-img">
                <img src="images/index/logo2.png" alt="头像">
                <p class="cont-img-update">修改头像</p>
            </div>
            <div class="cont-id">
                <span class="id-name">ID:liuhanxin666</span>
            </div>
            <div class="cont-info">
                <span>关注</span><span style="margin-left: 7px; margin-right: 15px;">1</span>
                <span>粉丝</span><span style="margin-left: 7px;;">0</span>
            </div>
            <ul class="cont-msgs">
                <li class="cont-msg">昵称:</li>
                <li class="cont-msg">实名:</li>
                <li class="cont-msg">性别:</li>
                <li class="cont-msg">生日:</li>
            </ul>
        </li>
        <li class="cont ">
            <div class="cont-title">
                <p class="cont-txt collect">我的收藏夹</p>
            </div>

        </li>
        <li class="cont ">
            <div class="cont-title">
                <p class="cont-txt">我关注的人</p>
                <p class="cont-num">共<span>1</span>人</p>
            </div>
        </li>
        <li class="cont ">
            <div class="cont-title">
                <p class="cont-txt">我的评论</p>
            </div>
        </li>
    </ol>
</div>
<!-- main end-->
</body>
<script>
    var list = document.getElementsByClassName("con-list");
    var cont = document.getElementsByClassName("cont");
    var index = 0;
    for (var i = 0; i < list.length; i++) {
        list[i].i = i;
        list[index].style.backgroundColor = "rgb(240,50,50)";
        list[i].onclick = function () {
            list[index].style.backgroundColor = "";
            cont[index].className = "cont";
            index = this.i;
            list[index].style.backgroundColor = "rgb(240,50,50)";
            cont[index].className = "cont show";
        }
    }
</script>

</html>
