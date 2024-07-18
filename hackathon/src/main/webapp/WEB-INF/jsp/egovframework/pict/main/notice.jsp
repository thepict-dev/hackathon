<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="ko">
	<c:import url="./include/head.jsp">
    	<c:param name="pageTitle" value="해커톤"/>
    </c:import>
    <body>
        <%@include file="./include/header.jsp" %>
	    <div class="subContainer">
	        <div class="subTop">
	            <h2>보도자료</h2>
	            <p>제11회 대한민국 SW융합 해커톤 대회의<br>최신 소식을 확인하세요</p>
	            <span><img src="/front_img/sub-deco.png" alt=""></span>
	        </div>
	        <div class="subBottom">
	            <div class="subBottomInner">
	                <ul class="tabNav">
	                    <li><a href="/notice">공지사항</a></li>
	                    <li class="active"><a href="/news">보도자료</a></li>
	                </ul>
	                <div class="noticeWrap">
	                    <ul class="noticeList sub">
	                        <li>
	                            <a href="#lnk">
	                                <p>SW융합 해커톤 대회 강원지역 참가팀 모집 공고</p>
	                                <span>2024.07.15 <img src="/front_img/arrow-black.png" alt=""></span>
	                            </a>
	                        </li>
	                    </ul>
	                </div>
	            </div>
	        </div>
	    </div>
        <%@include file="./include/footer.jsp" %>
    </body>
</html>
