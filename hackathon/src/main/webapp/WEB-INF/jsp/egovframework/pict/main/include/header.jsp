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
        <a href="#lnk" onclick="fn_alert()">로그인</a>
    </div>
    
    <script>
    	function fn_alert(){
    		alert("해당 페이지는 추후 제공 예정입니다.");
    	}
    </script>
</header>