<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>鲜花</title>
</head>
<link rel="stylesheet" href="css/flower.css" type="text/css">
<link rel="stylesheet" href="css/common.css" type="text/css">
<body>
<header class="mui-bar mui-bar-nav">
    <div id="header-one">
        <a href="ShiYou.html"><span>收藏世优网(shiyou.com)</span></a>
        <a href="#" id="wx"><span>关注微信</span></a>
        <a href="#" id="app"><span>世优商城app</span></a>
        <c:if test="${empty sessionScope.USER}"><a href="login.jsp"><span>你好，请登录</span></a></c:if>
        <c:if test="${!empty sessionScope.USER}"><a
                href="userinformation.jsp">欢迎：${sessionScope.USER.nickname}</a></c:if>
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
        <form action="" method="post">
            <img src="image/20201210085156.png" id="header-two-img1">
            <span id="header-two-span"></span>
            <input type="text" name="" id="search" value="" placeholder="搜索商品"/>
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
    <div id="all1">
        <div id="fenlei">
            <a href="">所有分类</a>
        </div>
        <div id="meta">
            <ul>
                <li><a href="product.do?opr=homePage&proType=2">新鲜水果</a></li>
                <li><a href="product.do?opr=homePage&proType=1">花卉绿植</a></li>
                <li><a href="product.do?opr=homePage&proType=3">新鲜蔬菜</a></li>
                <li><a href="product.do?opr=homePage&proType=5">趣味零食</a></li>
                <li><a href="product.do?opr=homePage&proType=7">美味饮品</a></li>
                <li><a href="product.do?opr=homePage&proType=6">绝味海鲜</a></li>
                <li><a href="product.do?opr=homePage&proType=4">超值美妆</a></li>
                <li><a>会员特价</a></li>
            </ul>
        </div>
    </div>

    <div id="background">
        <img src="image/flowerBackground.jpg">
    </div>
    <div id="flower1">
        <div id="flower2">
            <div class="flower3">
                <c:forEach items="${sessionScope.PRO.pageData}" var="product">
                    <div class="flower">
                        <ul>
                            <li>
                                <img src="${product.proImage}">
                            </li>
                            <li>
                                <p>${product.proName}</p>
                            </li>
                            <li>
                                <p>${product.proAttr}</p>
                            </li>
                            <li>
                                <p>${product.proDescribe}</p>
                            <li>
                                <p>￥${product.proPrice}</p>
                            </li>

                        </ul>
                        <div>
                                <%--                            <input type="submit" value="立即购买">--%>
                            <a href="product.do?opr=query&proId=${product.proID}">立即购买</a>
                        </div>
                    </div>
                </c:forEach>
                <div style="height: 100px;position: relative;top: 90px;">
                    <ul class="pageNumUl">
                        <li>
                            <a href="product.do?opr=homePage&pageNum=1&proType=${sessionScope.PRO.pageData.get(0).proType.commoId}">首页</a>
                        </li>
                        <li>
                            <a href="product.do?opr=homePage&pageNum=${sessionScope.PRO.pageNum-1}&proType=${sessionScope.PRO.pageData.get(0).proType.commoId}">上一页</a>
                        </li>
                        <li class="pageNumLi">
                            <c:forEach var="value" begin="${sessionScope.PRO.startPage}" end="${sessionScope.PRO.endPage}">
                                <a href="product.do?opr=homePage&pageNum=${value}&proType=${sessionScope.PRO.pageData.get(0).proType.commoId}" <c:if test="${sessionScope.PRO.pageNum==value}"> class="pageNum" </c:if> > ${value} </a>
                            </c:forEach>
                        </li>
                        <li>
                            <a href="product.do?opr=homePage&pageNum=${sessionScope.PRO.pageNum+1}&proType=${sessionScope.PRO.pageData.get(0).proType.commoId}">下一页</a>
                        </li>
                        <li>
                            <a href="product.do?opr=homePage&pageNum=${sessionScope.PRO.endPage}&proType=${sessionScope.PRO.pageData.get(0).proType.commoId}">尾页</a>
                        </li>
                    </ul>
                </div>

            </div>
        </div>
    </div>
    <div id="recommend">
        <div id="recommend1">
            <h1>热销推荐&nbsp;&nbsp;|&nbsp;&nbsp;用户喜欢</h1>
        </div>
        <div id="recommend2">
            <div class="recommend2">
                <ul>
                    <li>
                        <img src="image/幸福.jpg">
                    </li>
                    <li>
                        <a href="">幸福西饼蛋糕</a>
                    </li>
                    <li>
                        <a href="">￥179</a>
                    </li>
                    <li>
                        <a href="">已售545件</a>
                    </li>
                </ul>
            </div>
            <div class="recommend2">
                <ul>
                    <li>
                        <img src="image/21.jpg">
                    </li>
                    <li>
                        <a href="">21cake蛋糕</a>
                    </li>
                    <li>
                        <a href="">￥276</a>
                    </li>
                    <li>
                        <a href="">已售511件</a>
                    </li>
                </ul>
            </div>
            <div class="recommend2">
                <ul>
                    <li>
                        <img src="image/cakeboss.jpg">
                    </li>
                    <li>
                        <a href="">cakeboss蛋糕</a>
                    </li>
                    <li>
                        <a href="">￥299</a>
                    </li>
                    <li>
                        <a href="">已售448件</a>
                    </li>
                </ul>
            </div>
            <div class="recommend2">
                <ul>
                    <li>
                        <img src="image/诺心.jpg">
                    </li>
                    <li>
                        <a href="">诺心幸福蛋糕</a>
                    </li>
                    <li>
                        <a href="">￥258</a>
                    </li>
                    <li>
                        <a href="">已售493件</a>
                    </li>
                </ul>
            </div>
            <div class="recommend2">
                <ul>
                    <li>
                        <img src="image/boncake.jpg">
                    </li>
                    <li>
                        <a href="">boncake蛋糕</a>
                    </li>
                    <li>
                        <a href="">￥268</a>
                    </li>
                    <li>
                        <a href="">已售265件</a>
                    </li>
                </ul>
            </div>
            <div class="recommend2">
                <ul>
                    <li>
                        <img src="image/榴莲.jpg">
                    </li>
                    <li>
                        <a href="">榴莲幸福蛋糕</a>
                    </li>
                    <li>
                        <a href="">￥218</a>
                    </li>
                    <li>
                        <a href="">已售215件</a>
                    </li>
                </ul>
            </div>
            <div class="recommend2">
                <ul>
                    <li>
                        <img src="image/鲜果.jpg">
                    </li>
                    <li>
                        <a href="">鲜果幸福蛋糕</a>
                    </li>
                    <li>
                        <a href="">￥218</a>
                    </li>
                    <li>
                        <a href="">已售399件</a>
                    </li>
                </ul>
            </div>
            <div class="recommend2">
                <ul>
                    <li>
                        <img src="image/芒果.jpg">
                    </li>
                    <li>
                        <a href="">芒果幸福蛋糕</a>
                    </li>
                    <li>
                        <a href="">￥218</a>
                    </li>
                    <li>
                        <a href="">已售398件</a>
                    </li>
                </ul>
            </div>
        </div>

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
<script src="js/flower.js" type="text/javascript" charset="utf-8"></script>
</html>
