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
<header>
    <div class="headerInner">
        <div class="headerTitles">
            <h1><a href="#lnk"><img src="/front_img/logo-white.png" alt="로고"></a></h1>
            <p class="title">심사시스템</p>
        </div>
        <p class="userName"><span>${name} </span>심사위원님</p>
    </div>
</header>