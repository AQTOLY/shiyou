<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>世纪优品</title>
    <style type="text/css">
        #recommendUL > li img{
            width: 170px;
            height: 194px;
        }
        .didNav{
            text-align: right;
            width: 110px;
        }

        #recommendUL > li {
            border: 1px solid black;
            list-style: none;
            display: inline-block;
            width: 280px;
            height: 196px;
            position: relative;
        }
    </style>
    <link rel="stylesheet" type="text/css" href="css/header.css"/>
</head>
<body>
<header class="mui-bar mui-bar-nav">
    <div id="header-one">
        <a href="ShiYou.html"><span>收藏世优网(shiyou.com)</span></a>
        <a href="#" id="wx"><span>关注微信</span></a>
        <a href="#" id="app"><span>世优商城app</span></a>
        <c:if test="${empty sessionScope.USER}"><a href="login.jsp"><span>你好，请登录</span></a></c:if>
        <c:if test="${!empty sessionScope.USER}"><a id="nickname" uid="${sessionScope.USER.userId}"
                                                    href="userinformation.jsp">欢迎：${sessionScope.USER.nickname}</a></c:if>
        <c:if test="${empty sessionScope.USER}"><a href="register.jsp"><span>注册</span></a></c:if>
        <c:if test="${!empty sessionScope.USER}"><a href="user.do?opr=exit"><span>退出登录</span></a></c:if>
        <span id="header-one-w">|</span>
        <a href="order.jsp"><span>订单查询</span></a>
        <a href="#" id="user"><span>客户服务</span></a>
        <a href="shopping.jsp"><span>查看购物车</span></a>
        <span>中国世纪优品商城：中国购物网领先品牌</span>
    </div>
    <div id="user1">
        <p><a href="#">在线付款</a></p>
        <p><a href="#">帮助中心</a></p>
        <p><a href="#">售后服务</a></p>
        <p><a href="#">配送服务</a></p>
        <p><a href="#">留言反馈</a></p>
    </div>
    <div id="header-wx">
        <img src="image/wxguanjia_qrcode.png">
        <p>扫码关注</p>
        <p>回复"礼物" 更多惊喜！</p>
    </div>
    <div id="header-app">
        <img src="image/app_download_qrcode.png">
        <p>新人专享100元APP礼包</p>
    </div>
    <div id="header-two">
        <img src="image/diugai.com160726261381983.jpg" id="header-two-img">
        <form action="product.do?opr=search" method="post">
            <img src="image/20201210085156.png" id="header-two-img1">
            <span id="header-two-span"></span>
            <input type="text" name="goods" id="" value="" placeholder="搜索商品"/>
            <input type="submit" value="搜索"/>
        </form>
        <span id="header-two-span1">400-1314-5200</span>
        <a href="#"><span>在线客服</span></a>
    </div>
    <div id="header-there">
        <a>苹果</a>
        <a>圣诞礼物</a>
        <a>圣诞树</a>
        <a>贺卡</a>
    </div>
</header>


<section id="section">
    <div id="fen">
        所有分类
    </div>
    <div id="">
        <a href="product.do?opr=homePage&proType=2">新鲜水果</a>
        <a href="product.do?opr=homePage&proType=1">花卉绿植</a>
        <a href="product.do?opr=homePage&proType=3">新鲜蔬菜</a>
        <a href="product.do?opr=homePage&proType=5">趣味零食</a>
        <a href="product.do?opr=homePage&proType=7">美味饮品</a>
        <a href="product.do?opr=homePage&proType=6">绝味海鲜</a>
        <a href="product.do?opr=homePage&proType=4">超值美妆</a>
        <a>会员特价</a>
    </div>

    <!--lunbo-->
    <div class="lunbo">
        <img src="image/1.jpg">
        <img src="image/2.jpg">
        <img src="image/3.jpg">
        <img src="image/4.jpg">
        <img src="image/5.jpg">
        <img src="image/6.jpg">
        <img src="image/7.jpg">
    </div>

    <div class="fenlei">
        <div class="wsw">
            <p>新鲜水果</p>
            <p>苹果 樱桃 榴莲</p>
        </div>
        <div class="wsw">
            <p>花卉植物</p>
            <p>玫瑰 百合 郁金香</p>
        </div>
        <div class="wsw">
            <p>水产海鲜</p>
            <p>龙虾 鲍鱼 大闸蟹</p>
        </div>
        <div class="wsw">
            <p>新鲜水果</p>
            <p>苹果 樱桃 榴莲</p>
        </div>
        <div class="wsw">
            <p>新鲜水果</p>
            <p>苹果 樱桃 榴莲</p>
        </div>
        <div class="wsw">
            <p>新鲜水果</p>
            <p>苹果 樱桃 榴莲</p>
        </div>
        <div class="wsw">
            <p>新鲜水果</p>
            <p>苹果 樱桃 榴莲</p>
        </div>
    </div>

    <div id="section-div">
        <div id="">
            <img src="image/RW8DJPYK42%7B6OW0~I%7D)R6LQ.png"><a>购物网站龙头企业认证</a>
        </div>
        <div id="">
            <img src="image/N$2BRXSG1MS%5DRVA9B%253KF%7DW.png"><a>20年优质国际品牌</a>
        </div>
        <div id="">
            <img src="image/)AX@RFZE%5DK8~PRAV5MAOX%7DA.png"><a>12小时全国送货</a>
        </div>
        <div id="">
            <img src="image/G$D7%60_CQKIKUG%60IXAJU4SV2.png"><a>200%退赔承诺</a>
        </div>
        <div id="">
            <img src="image/3B$)9W%5DT9N~M(K$B3J%25_9VN.png"><a>最近395395条评论</a>
        </div>
    </div>

    <div id="section-div1">
        <img src="image/20_xmas_mbanner_pc.jpg">
    </div>
    <div id="section-div2">
        <img src="image/W6WVM8FMU316TDVIGNJ0P3C.png">
    </div>
    <nav id="section-div3" style="height: 450px;position: relative;top: 960px;width: 1200px;margin: 0 90px;">
        <h1 style="font-size: 30px">为你推荐</h1>
        <ul id="recommendUL">
            <li><a href="">
                <div style="position: absolute;" id="">
                    <img src="">
                </div>
                <nav class="didNav" style="position: absolute;right: 0">
                    <nav>名字</nav>
                    <nav>价格</nav>
                    <nav>属性</nav>
                </nav>
            </a></li>
            <li><a href="">
                <div style="position: absolute;" id="">
                    <img src="">
                </div>
                <nav class="didNav" style="position: absolute;right: 0">
                    <nav>名字</nav>
                    <nav>价格</nav>
                    <nav>属性</nav>
                </nav>
            </a></li>
            <li><a href="">
                <div style="position: absolute;" id="">
                    <img src="">
                </div>
                <nav class="didNav" style="position: absolute;right: 0">
                    <nav>名字</nav>
                    <nav>价格</nav>
                    <nav>属性</nav>
                </nav>
            </a></li>
            <li><a href="">
                <div style="position: absolute;" id="">
                    <img src="">
                </div>
                <nav class="didNav" style="position: absolute;right: 0">
                    <nav>名字</nav>
                    <nav>价格</nav>
                    <nav>属性</nav>
                </nav>
            </a></li>
            <li><a href="">
                <div style="position: absolute;" id="">
                    <img src="">
                </div>
                <nav class="didNav" style="position: absolute;right: 0">
                    <nav>名字</nav>
                    <nav>价格</nav>
                    <nav>属性</nav>
                </nav>
            </a></li>
            <li><a href="">
                <div style="position: absolute;" id="">
                    <img src="">
                </div>
                <nav class="didNav" style="position: absolute;right: 0">
                    <nav>名字</nav>
                    <nav>价格</nav>
                    <nav>属性</nav>
                </nav>
            </a></li>
            <li><a href="">
                <div style="position: absolute;" id="">
                    <img src="">
                </div>
                <nav class="didNav" style="position: absolute;right: 0">
                    <nav>名字</nav>
                    <nav>价格</nav>
                    <nav>属性</nav>
                </nav>
            </a></li>
            <li><a href="">
                <div style="position: absolute;" id="">
                    <img src="">
                </div>
                <nav class="didNav" style="position: absolute;right: 0">
                    <nav>名字</nav>
                    <nav>价格</nav>
                    <nav>属性</nav>
                </nav>
            </a></li>
        </ul>
        <div id="section-div4">
            <img src="image/GWAGEYDHWZ2VKYOLAN%7B%5BA1F.png">
        </div>

        <div id="goods1">

        </div>

        <div id="goods2">

        </div>

        <div id="goods3">

        </div>

        <div id="goods4">

        </div>

        <div id="goods5">

        </div>

        <div id="goods6">

        </div>

        <div id="goods7">

        </div>


</section>


<footer>
    <div id="">
        <span><a href="#">首页</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|</span>
        <span><a href="#">关于我们</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|</span>
        <span><a href="#">媒体报道</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|</span>
        <span><a href="#">联系方式</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|</span>
        <span><a href="#">企业团购</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|</span>
        <span><a href="#">花店入驻</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|</span>
        <span><a href="#">友情链接</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|</span>
        <span><a href="#">在线补款</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|</span>
        <span><a href="#">为什么选择中国鲜花礼品网</a></span>
    </div>
    <div id="">
        <img src="image/logo1.gif">
        <img src="image/453489_1524247_1503297492_4702.png">
        <img src="image/100.jpg">
        <img src="image/1552287486920607.gif">
        <img src="image/bico1.jpg">
    </div>
    <div id="">
        <a href="#" id="footer-one-a"><span>中国商城知名品牌</span></a>
        <a href="#" id="footer-one-a1">中国购物市场高级会员<span></span></a>
        <span id="footer-one-a2">
					 ICP经营许可证：粤B2-20050744 | 
				</span>
        <a href="" id="footer-one-a3"><span> 粤ICP备09171662号</span></a>
        <span id="footer-one-a4">
					粤公网安备44030502000373号 Copyright © 2005-2020
				</span>
        <span id="footer-one-a5">
					<a>www.shiyou.com</a>深圳市世纪优品信息技术有限公司
				</span>
    </div>
</footer>
</body>
<script src="js/jquery-3.5.1.min.js" type="text/javascript" charset="utf-8"></script>
<script src="js/header.js" type="text/javascript" charset="utf-8"></script>
<script src="js/ShiYou.js"></script>
<%--<script src="js/comment.js"></script>--%>
</html>
