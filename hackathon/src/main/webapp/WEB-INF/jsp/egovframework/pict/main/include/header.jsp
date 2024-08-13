<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	pageContext.setAttribute("user_idx", session.getAttribute("user_idx"));
	pageContext.setAttribute("name", session.getAttribute("name"));
	pageContext.setAttribute("company", session.getAttribute("company"));
%>
<c:set var="currentUrl" value="${pageContext.request.requestURI}" />

<header>
    <div class="headerInner">
        <div class="gnb">
            <h1><a href="/"></a></h1>
            <ul class="nav">
                <li <c:if test="${fn:contains(currentUrl, 'intro')}">class="active"</c:if>><a href="/intro.do">행사소개</a></li>
                <li <c:if test="${fn:contains(currentUrl, 'notice')}">class="active"</c:if>><a href="/notice.do">행사소식</a></li>
                <li><a href="https://hktweb.thepict.co.kr" target="_blank">행사장</a></li>
            </ul>
        </div>
        <div class="rightButtons drive">
        	<c:if test="${user_idx ne null && user_idx ne '' && user_idx ne undefined}">
            	<a href="/drive_list.do">드라이브</a>
           	</c:if>
        	<c:if test="${user_idx ne null && user_idx ne '' && user_idx ne undefined}">
            	<a href="#lnk" onclick="fn_logout()">로그아웃</a>
           	</c:if>
           	<c:if test="${user_idx eq null || user_idx eq '' || user_idx eq undefined}">
           		<a href="#lnk" onclick="fn_alert()">로그인</a>
           	</c:if>
           	
            <button type="button">본선등록</button>
        </div>
        <button></button>
    </div>
    
    <div class="mbNavWrap">
        <div class="mbNavTop">
            <h1><a href="/"><img src="/front_img/logo-white.png" alt=""></a></h1>
            <button><img src="/front_img/close.png" alt=""></button>
        </div>
        <ul class="mbGnb">
            <li><a href="/intro.do">행사소개</a></li>
            <li><a href="/notice.do">행사소식</a></li>
            <li><a href="https://hktweb.thepict.co.kr" target="_blank">행사장</a></li>
            <li><a href="#lnk" onclick="fn_alert()">로그인</a></li>
            <li><button type="button">본선등록</button></li>
        </ul>
    </div>
    
</header>

<script>
	function fn_alert() {
	    window.location.href="/user_main.do"
	    
	}
	function fn_logout() {
		if(confirm("로그아웃 하시겠습니까?")){
			location.href="/user_logout.do";
			return false;	
		}
	    
	}
	
</script>