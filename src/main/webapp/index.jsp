<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>和瑞金江房地产投资咨询有限公司</title>
<link rel="stylesheet" type="text/css" href="style/css.css" />
<script src="js/jquery-1.6.4.min.js"></script>
<script src="js/jquery.nivo.slider.pack.js"></script> 
</head>

<body>
<div class="warp h560 poR" style="border-bottom:7px solid #efe5de;">
     
         <div class="bigBgImg">
               
                    <ul id="bigPic">
                    
                        <li style="z-index:1; display:list-item; background:url(images/banner1.jpg) no-repeat center top;">
                            
                            <div class="con">
                                 <img class="adT1" src="images/adT1.png">
                                 <img class="adT2" src="images/adT2.png">
                                 <img class="adT3" src="images/adT3.png">
                            </div>
                            
                        </li>
                        <li style="z-index:0; display:none; background:url(images/banner2.jpg) no-repeat center top;">
                            
                            <div class="con">
                                 <img class="adT1" src="images/adT1.png">
                                 <img class="adT2" src="images/adT2.png">
                                 <img class="adT3" src="images/adT3.png">
                            </div>
                            
                        </li>
                        <li style="z-index:0; display:none; background:url(images/banner3.jpg) no-repeat center top;">
                            
                            <div class="con">
                                 <img class="adT1" src="images/adT1.png">
                                 <img class="adT2" src="images/adT2.png">
                                 <img class="adT3" src="images/adT3.png">
                            </div>
                            
                        </li>
                    
                    </ul>
                    <ul id="litPic"></ul>
               
         </div>
         
     <div class="warp poA" style="top:0; left:0; z-index:100;">
          <div class="wCon">
               
               <div class="fl mTop50"><img src="images/logo.png" /></div>
               
               <ul class="fr mTop50 nav" style="background-color:#be1027;">
                    <li>
                        <a href="index.jsp" class="sel">
                            首页 <br />
                            <em>main</em>
                            <i></i>
                        </a>
                    </li>
                    <jsp:include page="header.jsp" />
               </ul>
          
          </div>
     </div>

</div>

<div class="warp">

     <div class="wCon">
     
          <div class="newsBox" id="newsBox">
          
               <div class="tit">
                <c:forEach items="${newsLanmu}"  var="xx" varStatus="pos">
                  <a href="newsList.jsp?topId=${leftModule.id}&bid=${xx.id}" <c:if test="${pos.index==0}">class="sel"</c:if> >${xx.name}</a>
                </c:forEach>
               </div>
               
               <div style="width:100%; height:157px; overflow:hidden;" id="newsBoxCon">
                  <c:if test="${newsList1!=null}">
                    <ul class="con">
                      <c:forEach items="${newsList1}"  var="news" >
                        <li><a href="news.jsp?id=${news.id}" >${news.title}</a></li>
                      </c:forEach>
                    </ul>
                  </c:if>
                  <c:if test="${newsList2!=null}">
                    <ul class="con">
                      <c:forEach items="${newsList2}"  var="news" >
                        <li><a href="news.jsp?id=${news.id}" >${news.title}</a></li>
                      </c:forEach>
                    </ul>
                  </c:if>
                  <c:if test="${newsList3!=null}">
                    <ul class="con">
                      <c:forEach items="${newsList3}"  var="news" >
                        <li><a href="news.jsp?id=${news.id}" >${news.title}</a></li>
                      </c:forEach>
                    </ul>
                  </c:if>
                   
                </div>
               
          </div>
          
          <div class="aboutBox">
          
               <div class="tit"><a href="newsList.jsp?topId=${index_center.fid }&bid=${index_center.id }">关于金江</a></div>
               
               <div class="con">
                    
                    <img src="images/2014121964070341.jpg" />
                    <p style="max-height:120px;" class="txt">${jianjie}
                    </p>
               
               </div>
               
          </div>
          
          <div class="yewBox fr">
            <c:forEach items="${index_right_list}" var="board" varStatus="pos">
              <a href="newsList.jsp?topId=${index_right_biz.id}&bid=${board.id}" <c:if test="${pos.index==0}">class="sel"</c:if> >${board.name}</a>
            </c:forEach>
               
          </div>
          
          
          
     </div>

</div>

<div class="warp md_pic">

     <div class="wCon">
          ${starDept.conts}
     </div>

</div>

<div class="warp">

     <div class="wCon">
          
          <h3 class="tit">二手房贷款签约银行</h3>
          
          <ul class="box">
               <li><img src="images/zggsyh.jpg" /></li>
               <li><img src="images/jsyh.jpg" /></li>
               <li><img src="images/jtyh.jpg" /></li>
               <li><img src="images/msyh.jpg" /></li>
               <li class="noMar"><img src="images/nyyh.jpg" /></li>
               <li><img src="images/xyyh.jpg" /></li>
               <li><img src="images/yzcxyh.jpg" /></li>
               <li><img src="images/zsyh.jpg" /></li>
               <li><img src="images/hsyh.jpg" /></li>
               <li class="noMar"><img src="images/zxyh.jpg" /></li>
          </ul>
          
     </div>

</div>

<div class="warp footerBg">

     <div class="wCon">

          <div class="fl footLeft">
          
              <p><a href="#">公司概况</a> | <a href="#">金江文化</a> | <a href="#">金江业务</a> | <a href="#">交易流程</a> | <a href="#">新闻中心</a> | <a href="#">招兵买马</a> | <a href="#">联系我们</a></p>
              <p>© 2011-2014 安徽金江房地产营销策划有限公司　免责声明　皖ICP备10067684646号</p>
          
          </div>
          
          <div class="fr footright">
          
               <img src="images/ewm.jpg">
               <span>
                     扫描微信二维码<br />
                     关注金江二手房资讯<br />
                     微信号：金江房产168
               </span>
          
          </div>
          
     </div>

</div>
</body>
</html>
