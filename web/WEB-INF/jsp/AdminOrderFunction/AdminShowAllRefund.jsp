<%--
  Created by IntelliJ IDEA.
  User: 28781
  Date: 2023/4/8
  Time: 12:13
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>火影之屋</title>
    <meta name="viewport" content="width=device-width" />
    <link rel="icon" href="${pageContext.request.contextPath}/statics/images/same/renIcon2.png">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/renzhejianjie.css" >
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/figureclassify.css" >
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/same.css" >
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/AdminOrder.css" >
    <script src="${pageContext.request.contextPath}/statics/js/jquery-3.6.0.js"></script>
    <script src="${pageContext.request.contextPath}/statics/js/index.js"></script>
    <script src="${pageContext.request.contextPath}/statics/js/same.js"></script>
</head>
<body>
<script src="${pageContext.request.contextPath}/statics/js/indexCanvas.js"></script>
<%--  <div class="indexback">--%>
<%--  </div>--%>
<div class="whole">
    <div class="top">
        <img src="statics/images/same/muye.png " class="muye">
        <img src="statics/images/same/logo.png" class="narutologo">
        <div class="bgm">
            <p>青鸟ブルーバード / いきものがかり</p>
            <audio src="statics/music/青鸟页面BGM.mp3"   loop controls></audio>
        </div>
        <div class="navUpperRight">
            <a href="${pageContext.request.contextPath}/tologin"><img src="statics/images/same/login.png" class="imglogin"></a>
            <a href="${pageContext.request.contextPath}/toregister"><img src="statics/images/same/register.png" class="imgregister"></a>
            <a href="${pageContext.request.contextPath}/Adminlogout"><img src="statics/images/same/cancel.png" class="imgcancel"></a>
        </div>
        <img src="statics/images/same/juanzhou2.png" class="juanzhou">
        <div class="navimg">
            <img src="statics/images/same/mingren.png">
            <img src="statics/images/same/kakaxi.png">
            <img src="statics/images/same/zilaiye.png">
            <img src="statics/images/same/shuimen.png">
            <img src="statics/images/same/bai2.png">
            <img src="statics/images/same/you2.png">
            <img src="statics/images/same/ningci.png">
            <img src="statics/images/same/xiaoying.png">
            <img src="statics/images/same/zuozhu.png" class="navzuozhu">
        </div>
        <div class="nav">
            <ul>
                <li><a href="${pageContext.request.contextPath}/toAdminIndex">首页</a></li>
                <li><a href="${pageContext.request.contextPath}/toAdminrenzhejianjie">忍者简介</a></li>
                <li><a href="${pageContext.request.contextPath}/toAdminOPED">OPED</a></li>
                <li><a href="${pageContext.request.contextPath}/toAdminHyrzResource">火影迷资源</a></li>
                <li><a href="${pageContext.request.contextPath}/toAdminFigure">精致手办</a></li>
                <li><a href="${pageContext.request.contextPath}/toAdminPersonal">个人中心</a></li>
            </ul>
        </div>
    </div>
    <div class="navleftback">
        <div class="navleft">
            <ul>
                <li><a href="${pageContext.request.contextPath}/toAdminFigure">展品区</a></li>
                <li><a href="${pageContext.request.contextPath}/toAdminShowFigureBelong">手办分类管理</a></li>
                <li><a href="${pageContext.request.contextPath}/toAdminShowAllOrderSP?startPlace=0">订单管理</a></li>
                <li><a href="${pageContext.request.contextPath}/AdminShowAllRefund">售后管理</a></li>
                <li><a href="${pageContext.request.contextPath}/toAdminShowFigureReportForms">报表统计</a></li>
                <%--                <li><a href="${pageContext.request.contextPath}/toFigure">订单处理状态</a></li>--%>
                <%--                <li><a href="${pageContext.request.contextPath}/toFigure">退货处理状态</a></li>--%>
            </ul>
        </div>
    </div>
    <div class="Content">
        <div class="ContentTop">
            <img src="statics/images/index/hyrz.png">
            <div class="muyefeiwu">
                <p><span>木叶飞舞之处，火亦生生不息</span></p>
            </div>
        </div>
        <div class="ContentMain">
            <div class="renzhejieshao">
                <table class="AdminShowRefund-table">
                    <tr>
                        <th>订单号</th>
                        <th>用户</th>
                        <th>图片</th>
                        <th>手办名称</th>
                        <th>处理类型</th>
                        <th>原因</th>
                        <th>申述时间</th>
                        <th>是否发货</th>
                        <th>是否收货</th>
                        <th>操作</th>
                    </tr>
                    <c:forEach var="refund" items="${requestScope.get('AdminAllRefund')}">
                        <tr>
                            <td class="td1">${refund.getOrderId()}</td>
                            <td class="td2">${refund.getOrder().getUser().getUsername()}</td>
                            <c:if test="${refund.getFigureImage()!=null}">
                                <td class="td3"><img src="/statics/images/refund/${refund.getFigureImage()}" width="100px" height="100px"></td>
                            </c:if>
                            <c:if test="${refund.getFigureImage() eq null}">
                                <td class="td3">无图片</td>
                            </c:if>
                            <td class="td4">${refund.getOrder().getFigure().getFigureName()}</td>
                            <td class="td5">${refund.getRefundType()}</td>
                            <td class="td6">${refund.getRefundReason()}</td>
                            <td class="td7">${refund.getRefundTime()}</td>
                            <td class="td8">${refund.getOrder().getDeliveryStatus()}</td>
                            <td class="td9">${refund.getOrder().getIsreceive()}</td>
                            <c:choose>
                                <c:when test="${refund.getRefundStatus() eq '审核通过' or refund.getRefundStatus() eq '审核不通过' }">
                                    <td class="td10">（${refund.getRefundStatus()}）</td>
                                </c:when>
                                <c:otherwise>
                                    <td class="td10">
                                        <a class="a1" href="${pageContext.request.contextPath}/AdminAgreeRefund/${refund.getOrderId()}">同意处理</a>
                                        <a class="a2" href="${pageContext.request.contextPath}/AdminDisagreeRefund/${refund.getOrderId()}">取消处理</a>
                                    </td>
                                </c:otherwise>
                            </c:choose>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </div>
</div>
</body>
</html>

