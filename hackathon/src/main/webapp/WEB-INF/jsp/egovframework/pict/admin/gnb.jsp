<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn"	   uri="http://java.sun.com/jsp/jstl/functions"%>



<%
	String url = request.getRequestURL().toString();
	pageContext.setAttribute("url", url);
	
%>
<c:set var="connection_status" value="${fn:indexOf(url, 'connection_status')}"/>
<c:set var="connection_user" value="${fn:indexOf(url, 'connection_user')}"/>
<c:set var="lecture" value="${fn:indexOf(url, 'lecture')}"/>
<c:set var="lecture_list" value="${fn:indexOf(url, 'lecture_list')}"/>
<c:set var="lecture_register" value="${fn:indexOf(url, 'lecture_register')}"/>



<c:set var="gnb" value="${fn:indexOf(url, 'gnb')}"/>
<c:set var="intro" value="${fn:indexOf(url, 'intro')}"/>


<c:set var="board_list" value="${fn:indexOf(url, 'board_list')}"/>
<c:set var="board_register" value="${fn:indexOf(url, 'board_register')}"/>

<c:set var="user_list" value="${fn:indexOf(url, 'user_list')}"/>
<c:set var="user_register" value="${fn:indexOf(url, 'user_register')}"/>

<c:set var="team_list" value="${fn:indexOf(url, 'team_list')}"/>
<c:set var="team_register" value="${fn:indexOf(url, 'team_register')}"/>

<c:set var="file_list" value="${fn:indexOf(url, 'file_list')}"/>
<c:set var="final_list" value="${fn:indexOf(url, 'final_list')}"/>


<c:set var="vote_list" value="${fn:indexOf(url, 'vote_list')}"/>
<c:set var="judge_list" value="${fn:indexOf(url, 'judge_list')}"/>

<nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
    <div class="sb-sidenav-menu">
        <div class="nav">
        	<%
				pageContext.setAttribute("sessionid", session.getAttribute("id"));
			%>
			          
			
	            
            <!-- 게시판 -->
            <a class="nav-link" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts1" aria-expanded="true" aria-controls="collapseLayouts1">
				게시판 정보
            </a>
            <div class="collapse <c:if test="${board ne -1}">show</c:if>" id="collapseLayouts1" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                <nav class="sb-sidenav-menu-nested nav">
                    <a class="nav-link <c:if test="${board_register ne -1}">active</c:if>" href="/board/board_register.do">게시물 등록</a>
                </nav>
            </div>
            <div class="collapse <c:if test="${board ne -1}">show</c:if>" id="collapseLayouts1" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                <nav class="sb-sidenav-menu-nested nav">
                    <a class="nav-link <c:if test="${board_list ne -1}">active</c:if>" href="/board/board_list.do">게시물 리스트</a>
                </nav>
            </div>
            
            <!-- 참가자 -->
            <a class="nav-link" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts2" aria-expanded="true" aria-controls="collapseLayouts2">
				참가 정보
            </a>
            <div class="collapse <c:if test="${team_register ne -1}">show</c:if>" id="collapseLayouts2" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                <nav class="sb-sidenav-menu-nested nav">
                    <a class="nav-link <c:if test="${team_register ne -1}">active</c:if>" href="/team/team_register.do">참가팀 등록</a>
                </nav>
            </div>
            <div class="collapse <c:if test="${team_list ne -1}">show</c:if>" id="collapseLayouts2" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                <nav class="sb-sidenav-menu-nested nav">
                    <a class="nav-link <c:if test="${team_list ne -1}">active</c:if>" href="/team/team_list.do">참가팀 리스트</a>
                </nav>
            </div>
            <div class="collapse <c:if test="${user_register ne -1}">show</c:if>" id="collapseLayouts2" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                <nav class="sb-sidenav-menu-nested nav">
                    <a class="nav-link <c:if test="${user_register ne -1}">active</c:if>" href="/user/user_register.do">참가자 등록</a>
                </nav>
            </div>
            <div class="collapse <c:if test="${user_list ne -1}">show</c:if>" id="collapseLayouts2" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                <nav class="sb-sidenav-menu-nested nav">
                    <a class="nav-link <c:if test="${user_list ne -1}">active</c:if>" href="/user/user_list.do">참가자 리스트</a>
                </nav>
            </div>
            
            <!-- 파일함관리 -->
            <a class="nav-link" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts2" aria-expanded="true" aria-controls="collapseLayouts2">
				파일함 정보
            </a>
            <div class="collapse <c:if test="${file_list ne -1}">show</c:if>" id="collapseLayouts2" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                <nav class="sb-sidenav-menu-nested nav">
                    <a class="nav-link <c:if test="${file_list ne -1}">active</c:if>" href="/file/file_list.do">파일함 리스트</a>
                </nav>
            </div>
            <div class="collapse <c:if test="${final_list ne -1}">show</c:if>" id="collapseLayouts2" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                <nav class="sb-sidenav-menu-nested nav">
                    <a class="nav-link <c:if test="${final_list ne -1}">active</c:if>" href="/file/final_list.do">최종제출 리스트</a>
                </nav>
            </div>
            
            <!-- 심사관리 -->
            <a class="nav-link" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts2" aria-expanded="true" aria-controls="collapseLayouts2">
				심사 정보
            </a>
            <div class="collapse <c:if test="${vote_list ne -1}">show</c:if>" id="collapseLayouts2" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                <nav class="sb-sidenav-menu-nested nav">
                    <a class="nav-link <c:if test="${vote_list ne -1}">active</c:if>" href="/vote/vote_list.do">청중투표 정보</a>
                </nav>
            </div>
            <div class="collapse <c:if test="${judge_list ne -1}">show</c:if>" id="collapseLayouts2" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                <nav class="sb-sidenav-menu-nested nav">
                    <a class="nav-link <c:if test="${judge_list ne -1}">active</c:if>" href="/judge/judge_list.do">심사평가 정보</a>
                </nav>
            </div>
            
		</div>
	</div>
</nav>
<script>
	function tttt() {
		alert("준비중입니다.")
	}
</script>

<script src="../../../../../js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="../../../../../js/scripts.js"></script>
<script src="../../../../../js/Chart.min.js" crossorigin="anonymous"></script>
<script src="../../../../../js/simple-datatables@latest.js" crossorigin="anonymous"></script>