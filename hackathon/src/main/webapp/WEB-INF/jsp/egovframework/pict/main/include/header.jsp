<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<header>
    <div class="headerInner">
        <div class="gnb">
            <h1><a href="/"></a></h1>
            <ul class="nav">
                <li><a href="/intro.do">행사소개</a></li>
                <li><a href="#lnk" onclick="fn_alert()">멘토소개</a></li>
                <li><a href="/notice.do">행사소식</a></li>
            </ul>
        </div>
        <div class="rightButtons">
            <a href="/user_login.do">로그인</a>
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
            <li><a href="#lnk" onclick="fn_alert()">멘토소개</a></li>
            <li><a href="/notice.do">행사소식</a></li>
            <li><a href="#lnk" onclick="fn_alert()">로그인</a></li>
        </ul>
    </div>
    
</header>