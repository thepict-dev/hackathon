<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>



<!DOCTYPE html>
<html lang="ko">
	<c:import url="./header.jsp">
    	<c:param name="pageTitle" value="심사평가 리스트"/>
    </c:import>
    
    <body class="sb-nav-fixed">
        <%@include file="./navigation.jsp" %>
        <div id="layoutSidenav">
	        <div id="layoutSidenav_nav">
				<%@include file="./gnb.jsp" %>
			</div>
			
			<div id="layoutSidenav_content">
				<main class="contents">
					<h2 class="contents-title">심사평가 리스트</h2>
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
							        		<col style="width:8%;">
							        		<col style="width:8%;">
							        		<col style="width:8%;">
							        		<col style="width:10%;">
							        		<col style="width:10%;">
							        		<col style="width:32%;">
							        		<col style="width:8%;">
							        		<col style="width:8%;">
							        		<col style="width:8%;">
							        	</colgroup>
							            <thead>
							                <tr class="thead">
							                    <th>순서</th>
							                    <th>과제</th>
							                    <th>지역</th>
							                    <th>수상</th>
							                    <th>팀명</th>
							                    <th>과제명</th>
							                    <th>총점수</th>
							                    <th>심사평가 수</th>
							                    <th>평균점수</th>
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
													<td>${resultList.local}</td>
							                    	<td>${resultList.award}</td>
							                    	<td class="opt-tl"><a href="javascript:void(0);" onclick="board_mod('${resultList.idx}');" class="link">${resultList.title}</a></td>
							                    	<td class="opt-tl"><a href="javascript:void(0);" onclick="board_mod('${resultList.idx}');" class="link">${resultList.assignment_name}</a></td>
							                    	<td>${resultList.point_sum}</td>
							                    	<td>${resultList.point_cnt}</td>
							                    	<td>${resultList.point}</td>
								                </tr>
							                </c:forEach>
							            </tbody>
						            </table>
				            	</div>
				            </div>
			            </div>
		            </div>
				</main>
			</div>
		</div>
		<form action="" id="register" name="register" method="post" enctype="multipart/form-data">
			<input type='hidden' name="idx" id="idx" value='' />
			<input type='hidden' name="use_at" id="use_at" value='' />
			<input type='hidden' name="type" id="type" value='' />
		</form>
		<script>
			$("#search_fm").change(function(){
				$("#search_fm").attr("action", "/judge/judge_list.do");
				$("#search_fm").submit();
			});
		
			function search(){
				$("#search_fm").attr("action", "/judge/judge_list.do");
				$("#search_fm").submit();
			}
			function board_mod(idx){
				location.href= "/team/team_register.do?idx="+ idx;
			}
		</script>
            
		<script src="../../../../../js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
		<script src="../../../../../js/scripts.js"></script>
		<script src="../../../../../js/Chart.min.js" crossorigin="anonymous"></script>
		<script src="../../../../../js/simple-datatables@latest.js" crossorigin="anonymous"></script>
		
    </body>
</html>