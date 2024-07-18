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
	        <div class="subBottom">
	            <div class="subBottomInner">
	                <div class="viewContainer">
	                    <div class="viewTop">
	                        <div class="viewTitles">
	                            <a href="/news.do"><img src="/front_img/back.png" alt=""></a>
	                            <p>${pictVO.title}</p>
	                        </div>
	                        <p class="date">${fn:substring(pictVO.reg_date,0,11)}</p>
	                    </div>
	                    <div class="viewBottom">
	                        <p>${pictVO.text}</p>
	                        <!--<img src="/front_img/poster1.png" alt=""> -->
	                    </div>
	                </div>
	                <div class="buttonContainer">
	                    <a href="/news.do">목록으로</a>
	                </div>
	            </div>
	        </div>
	    </div>
        <%@include file="./include/footer.jsp" %>
    </body>
</html>
