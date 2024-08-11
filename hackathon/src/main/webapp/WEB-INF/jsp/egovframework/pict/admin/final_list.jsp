<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>



<!DOCTYPE html>
<html lang="ko">
	<c:import url="./header.jsp">
    	<c:param name="pageTitle" value="파일함 리스트"/>
    </c:import>
    
    <body class="sb-nav-fixed">
        <%@include file="./navigation.jsp" %>
        <div id="layoutSidenav">
	        <div id="layoutSidenav_nav">
				<%@include file="./gnb.jsp" %>
			</div>
			
			<div id="layoutSidenav_content">
				<main class="contents">
					<h2 class="contents-title">파일함 리스트</h2>
					<div class="contents-box">
						<div class="card">
						    <div class="card-body">
							    <div class="search-form">
							    	<form action="" id="search_fm" name="search_fm" method="get" class="search-box">
								    	<select id="assignment_id" name="assignment_id" class="input opt-max-width-500" style="width:400px">
											<option value="">과제구분선택</option>
											<option value="1" <c:if test="${pictVO.assignment_id eq '1' || pictVO.assignment_id eq 1}">selected</c:if>>자유과제</option>
											<option value="2" <c:if test="${pictVO.assignment_id eq '2' || pictVO.assignment_id eq 2}">selected</c:if>>지정과제①</option>
											<option value="3" <c:if test="${pictVO.assignment_id eq '3' || pictVO.assignment_id eq 3}">selected</c:if>>지정과제②</option>
										</select>
							    	</form>
							    </div>
						    	<div class="tbl-basic tbl-hover">
							        <table style="text-align : left">
							        	<colgroup>
							        		<col style="width:10%;">
							        		<col style="width:10%;">
							        		<col style="width:20%;">
							        		<col style="width:20%;">
							        		<col style="width:20%;">
							        		<col style="width:20%;">
							        	</colgroup>
							            <thead>
							                <tr class="thead">
							                    <th>순서</th>
							                    <th>과제구분</th>
							                    <th>팀명</th>
							                    <th>등록자</th>
							                    <th>첨부파일</th>
							                    <th>등록일</th>
							                </tr>
							            </thead>
							            <tbody>
								            <c:forEach var="resultList" items="${resultList}" varStatus="status">
								                <tr>
							                    	<td>${status.count}</td>
							                    	<td>
							                    		<c:if test="${resultList.assignment_id eq '1' || resultList.assignment_id eq 1}">자유과제</c:if>
							                    		<c:if test="${resultList.assignment_id eq '2' || resultList.assignment_id eq 2}">지정과제1</c:if>
							                    		<c:if test="${resultList.assignment_id eq '3' || resultList.assignment_id eq 3}">지정과제2</c:if>
													</td>
							                    	<td>${resultList.title}</td>
							                    	<td>${resultList.name}</td>
							                    	<td>
							                    		<a href="https://www.swhackathon.kr${resultList.file_url }" target="_blank">${fn:split(resultList.file_url,'/')[4]}</a>
						                    		</td>
							                    	<td>${resultList.reg_date}</td>
								                </tr>
							                </c:forEach>
							            </tbody>
						            </table>
				            	</div>
				            </div>
			            </div>
		            </div>
		            <!-- <div style="float : right; margin-right: 20%">
			            <button type="button" id="button1" onclick="board_list();">게시글 리스트</button>
		            </div> -->
				</main>
			</div>
		</div>

		<script>
			$("#search_fm").change(function(){
				$("#search_fm").attr("action", "/file/final_list.do");
				$("#search_fm").submit();
			});

		</script>
            
		<script src="../../../../../js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
		<script src="../../../../../js/scripts.js"></script>
		<script src="../../../../../js/Chart.min.js" crossorigin="anonymous"></script>
		<script src="../../../../../js/simple-datatables@latest.js" crossorigin="anonymous"></script>
		
    </body>
</html>