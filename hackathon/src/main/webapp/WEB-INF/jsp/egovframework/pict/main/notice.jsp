<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
	<c:import url="./include/head.jsp">
    	<c:param name="pageTitle" value="해커톤"/>
    </c:import>
    <body>
        <%@include file="./include/header.jsp" %>
	    <div class="subContainer">
	        <div class="subTop">
	            <h2>공지사항</h2>
	            <p class="pcText">제11회 대한민국 SW융합 해커톤 대회의<br>최신 소식을 확인하세요</p>
	            <p class="mbText">제11회 대한민국<br>SW융합 해커톤 대회의<br>최신 소식을 확인하세요</p>
	            <span><img src="/front_img/sub-deco.png" alt=""></span>
	        </div>
	        <div class="subBottom">
	            <div class="subBottomInner">
	                <ul class="tabNav">
	                    <li class="active"><a href="/notice.do">공지사항</a></li>
	                    <li><a href="/news.do">보도자료</a></li>
	                </ul>
	                <div class="noticeWrap">
	                    <ul class="noticeList sub">
	                    	<c:forEach var="resultList" items="${resultList}" varStatus="status">
		                        <li>
		                            <a href="notice_view.do?idx=${resultList.idx}">
		                                <p>${resultList.title}</p>
		                                <span>${fn:substring(board_list.reg_date,0,11)} <img src="/front_img/arrow-black.png" alt=""></span>
		                            </a>
		                        </li>
	                        </c:forEach>
	                    </ul>
	                </div>
	            </div>
	        </div>
	    </div>
        <%@include file="./include/footer.jsp" %>
    </body>
</html>
