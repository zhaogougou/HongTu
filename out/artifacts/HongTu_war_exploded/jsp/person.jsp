<%--
  Created by IntelliJ IDEA.
  User: zjy
  Date: 2019/11/13
  Time: 15:29
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
    <title>个人中心</title>
    <link rel="shortcut icon" href="images/index/logo2.png" type="image/x-icon">
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="//at.alicdn.com/t/font_1495642_j2nqpwvf8qn.css">
<%--    <link rel="stylesheet" href="css/person.css">--%>
    <link rel="stylesheet" href="css/epochModel/epochHeader.css">
    <link rel="stylesheet" href="css/index/footer.css">
    <style>
        body{
            background-color: #aaa;
        }
        #wrap {
            position: relative;
            width: 1200px;
            margin: 15px auto;
            background-color: #fff;
        }

        #wrap>ul {
            width: 100px;
            height: 300px;
            border-right: 1px solid #aaa;
        }

        #wrap .con-list {
            position: relative;
            width: 100px;
            height: 50px;
            border-bottom: 1px solid #aaa;
            text-align: center;
            cursor: pointer;
            user-select: none;
            -webkit-user-select: none;
            -moz-user-select: none;
            transition: .2s;
        }
        #wrap .con-list:hover {
            background-color: rgba(240,50,50,.5);
        }
        #wrap .con-list>.iconfont {
            font-size: 24px;
            vertical-align: middle;
        }

        #wrap .con-list>span {
            line-height: 50px;
            vertical-align: middle;
        }

        #wrap .cont {
            display: none;
            position: absolute;
            width: 1100px;
            height: 550px;
            background-color: #fff;
            top: 0px;
            left: 102px;
            padding: 0 30px;
            box-sizing: border-box;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
        }

        #wrap .cont.show {
            display: block;
        }

        #wrap .cont .cont-title {
            display: flex;
            align-items: center;
            justify-content: space-between;
            width: 100%;
            height: 90px;
            border-bottom: 1px solid #aaa;
        }

        #wrap .cont .cont-title .cont-txt {
            font-size: 22px;
            font-weight: bold;
        }

        .cont-img {
            float: left;
            text-align: center;

            margin-right: 20px;
            cursor: pointer;
        }

        .cont-img>img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            margin: 16px auto 0;
        }

        .cont-img>.cont-img-update {
            font-size: 16px;
            color: #3399ea;
            margin-top: 8px;
            cursor: pointer;
            border：none;
            background: none;
            outline: none;
            user-select: none;


        }

        .cont-id {
            width: 100%;
            height: 50px;
            line-height: 50px;
        }

        .cont-id .id-name {
            font-size: 18px;
            margin-right: 16px;
            margin-top: 20px;
        }

        .cont-info {
            margin: 5px 0 0  120px;
            padding-bottom:10px ;
            border-bottom: 1px solid #aaa;
        }
        .cont-info span {
            font-size: 16px;
        }
        .update{
            display: block;
            width: 65px;
            height: 25px;
            padding: 0 2px;
            border: none;
            background: none;
            border: 1px solid #333;
            cursor: pointer;
        }
        .update:hover {
            border-color: #aaa;
            color: #aaa;
        }
        .cont-msg{
            padding-left: 120px;
            height: 60px;
            line-height: 60px;
            font-size: 16px;
            outline: none;
            user-select: none;
        }
        .cont-edit{
            display: inline-block;
            width: 200px;
            height: 30px;
            line-height: 30px;
            outline: none;
        }
        button[type="submit"]{
            position: absolute;
            left: 50%;
            transform: translateX(-50%);
            width: 50px;
            height: 30px;
            outline: none;
            border: none;
            background: none;
            background: #aaa;
            border-radius: 5px;
            cursor: pointer;
        }
        .collect{
            position: relative;
        }
        .collect::after{
            position: absolute;
            content: "";
            top: 57px;
            left: 0px;
            width: 110px;
            height: 5px;
            background-color: red;
        }
        .cont-num{
            font-size: 14px;
        }
    </style>
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
                <input type="file" class="cont-img-update">修改头像</input>
            </div>
            <div class="cont-id">
                <span class="id-name">ID:liuhanxin666</span>
            </div>
            <div class="cont-info">
                <span>关注</span><span style="margin-left: 7px; margin-right: 15px;">1</span>
                <span>粉丝</span><span style="margin-left: 7px;;">0</span>
            </div>
            <!-- 修改资料 -->

            <div class="cont-all">
                <button class="update fr">修改资料</button>
                <form action="" method="post">
                    <ul class="cont-msgs">
                        <li class="cont-msg">昵&nbsp&nbsp&nbsp&nbsp&nbsp称:<div class="cont-edit" contenteditable="false">sfsdfsd</div></li>
                        <li class="cont-msg">实&nbsp&nbsp&nbsp&nbsp&nbsp名:<div class="cont-edit" contenteditable="false">sdsfs</div></li>
                        <li class="cont-msg">性&nbsp&nbsp&nbsp&nbsp&nbsp别:<div class="cont-edit" contenteditable="false">sdfd</div></li>
                        <li class="cont-msg">生&nbsp&nbsp&nbsp&nbsp&nbsp日:<div class="cont-edit" contenteditable="false">sdfsdf</div></li>
                        <li class="cont-msg">手机号: <div class="cont-edit" contenteditable="false">sfdsfsd</div></li>
                    </ul>
                    <button type="submit" >保存</button>
                </form>
            </div>
        </li>
        <li class="cont">
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
<!-- fooer start -->
<footer style="position: absolute; top: 650px;">
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
<script>
    var update = document.getElementsByClassName("update")[0];
    var edit = document.getElementsByClassName("cont-edit");
    update.onclick = function () {
        for(var i=0;i<edit.length;i++){
            edit[i].style.border="1px solid #aaa";
            edit[i].setAttribute("contenteditable", "true");
        }
    }
</script>

</html>
