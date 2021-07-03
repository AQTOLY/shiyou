<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="css/buy.css"/>
</head>
<body>
<header class="mui-bar mui-bar-nav">
    <div id="header-one">
        <a href="ShiYou.html"><span>收藏世优网(shiyou.com)</span></a>
        <a href="#" id="wx"><span>关注微信</span></a>
        <a href="#" id="app"><span>世优商城app</span></a>
        <c:if test="${empty sessionScope.USER}"><a href="login.jsp"><span>你好，请登录</span></a></c:if>
        <c:if test="${!empty sessionScope.USER}">
            <a id="nickname" uid="${sessionScope.USER.userId}" isvip="${sessionScope.USER.identity.idenId}" href="userinformation.jsp">欢迎：${sessionScope.USER.nickname}</a></c:if>
        <c:if test="${empty sessionScope.USER}"><a href="register.jsp"><span>注册</span></a></c:if>
        <c:if test="${!empty sessionScope.USER}"><a href="user.do?opr=exit"><span>退出登录</span></a></c:if>
        <span id="header-one-w">|</span>
        <a href="order.do?opr=orderList&id=${sessionScope.USER.userId}"><span>订单查询</span></a>
        <a href="#" id="user"><span>客户服务</span></a>
        <a href="#"><span>查看购物车</span></a>
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
            <input type="text" name="" id="" value="" placeholder="搜索商品"/>
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

<section>
    <div id="s-shohuo">
        <div id="s-shohuo-div">
            <h3>收货人信息</h3><a style="    left: 300px;
    position: absolute;
    top: 223px;" href="userinformation.jsp">新增收货地址</a>
            <c:forEach items="${sessionScope.USER.shipPing}" var="ship">
                <div class="shipAddr">
                    <span shipId="${ship.shipID}">${ship.shipPerson}</span>
                    <span>${ship.shipProvince}${ship.shipCity}${ship.shipDistrict}${ship.shipDetail}</span>
                    <span>${ship.shipPhone}</span>
                </div>
            </c:forEach>
        </div>
        <div id="s-dinggo">
            <h3>订购人信息</h3>
            <ul>
                <li>订购人姓名：<span id="uid" userId="${sessionScope.USER.userId}">${sessionScope.USER.nickname}</span></li>
                <li>订购人地址：<span>${sessionScope.USER.address}</span></li>
                <li>订购人电话：<span>${sessionScope.USER.phone}</span></li>
            </ul>
        </div>
        <div id="s-shangpin">
            <h3>商品清单</h3>
            <ul id="proUl">
                <c:forEach var="buySptl" items="${sessionScope.buySptl}">
                    <li class="sptlId" sptlid="${buySptl.sptlId}">
                        <a href="">
                            <img src="${buySptl.sptlPro.proImage}">
                            <div class="s-shangpin-div">
                                <p class="proName" pid="${buySptl.sptlPro.proID}">${buySptl.sptlPro.proName}</p>
                                ￥<span class="proPrice">${buySptl.sptlPro.proPrice}</span>
                                x<span class="proNum">${buySptl.sptlProNum}</span>
                            </div>
                        </a>
                    </li>
                </c:forEach>

            </ul>
        </div>
        <div id="s-tijiao">
            <p>配送至：<span class="realAddr">未选择收货地址</span></p>
            <p>共<span class="proCount">1</span>件商品，商品总金额:<span class="totalPrice">￥159</span></p>
            <p>应付：<span class="realPrice">￥159</span></p>
            <button type="button" id="btn">提交订单</button>
        </div>
    </div>
</section>

<footer>
    <div>
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
    <div>
        <img src="image/logo1.gif">
        <img src="image/453489_1524247_1503297492_4702.png">
        <img src="image/100.jpg">
        <img src="image/1552287486920607.gif">
        <img src="image/bico1.jpg">
    </div>
    <div>
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
<script src="js/jquery-3.5.1.min.js" type="text/javascript" charset="utf-8"></script>
<script src="js/header.js" type="text/javascript" charset="utf-8"></script>
<script src="js/buy.js"></script>
</body>
</html>
