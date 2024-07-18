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
	                            <a href="/notice.do"><img src="/front_img/back.png" alt=""></a>
	                            <p>${pictVO.title}</p>
	                        </div>
	                        <p class="date">${fn:substring(pictVO.reg_date,0,11)}</p>
	                    </div>
	                    <div class="viewBottom">
	                        <p>${pictVO.text}</p>
	                        <!--<img src="/front_img/poster1.png" alt=""> -->
	                    </div>
	                    <c:if test="${pictVO.file_1 ne '' && pictVO.file_1 ne undefined && pictVO.file_1 ne null}">
			                <div class="addFile">
			                	
			                	
			                	<c:if test="${pictVO.file_1 ne '' && pictVO.file_1 ne undefined && pictVO.file_1 ne null}">
				                    <a href="${pictVO.file_1}" target="_blank">
				                        <img src="/front_img/file.png" alt="">${fn:split(pictVO.file_1,'/')[3]}
				                    </a>
			                    </c:if>
			                    <c:if test="${pictVO.file_2 ne '' && pictVO.file_2 ne undefined && pictVO.file_2 ne null}">
				                    <a href="${pictVO.file_2}" target="_blank">
				                        <img src="/front_img/file.png" alt="">${fn:split(pictVO.file_2,'/')[3]}
				                    </a>
			                    </c:if>
			                    <c:if test="${pictVO.file_3 ne '' && pictVO.file_3 ne undefined && pictVO.file_3 ne null}">
				                    <a href="${pictVO.file_3}" target="_blank">
				                        <img src="/front_img/file.png" alt="">${fn:split(pictVO.file_3,'/')[3]}
				                    </a>
			                    </c:if>
			                    <c:if test="${pictVO.file_4 ne '' && pictVO.file_4 ne undefined && pictVO.file_4 ne null}">
				                    <a href="${pictVO.file_4}" target="_blank">
				                        <img src="/front_img/file.png" alt="">${fn:split(pictVO.file_4,'/')[3]}
				                    </a>
			                    </c:if>
			                    <c:if test="${pictVO.file_5 ne '' && pictVO.file_5 ne undefined && pictVO.file_5 ne null}">
				                    <a href="${pictVO.file_5}" target="_blank">
				                        <img src="/front_img/file.png" alt="">${fn:split(pictVO.file_5,'/')[3]}
				                    </a>
			                    </c:if>
			                    
			                </div>
		                </c:if>
	                </div>
	                <div class="buttonContainer">
	                    <a href="/notice.do">목록으로</a>
	                </div>
	            </div>
	        </div>
	    </div>
        <%@include file="./include/footer.jsp" %>
    </body>
</html>
