<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>



<!DOCTYPE html>
<html lang="ko">
	<c:import url="./header.jsp">
    	<c:param name="pageTitle" value="참가팀 리스트"/>
    </c:import>
    <style type="text/css">
		.paginations{
		    display: flex;
   			justify-content: center;
		    column-gap: 5px;
		    width: 100%;
		    max-width: 513px;
		    margin: 0 auto;
		    padding: 25px 0 30px 0;
		}
		.paginations li{
		    display: flex;
		    justify-content: center;
		    align-items: center;
		    width: 32px;
		    height: 32px;
		    border-radius: 8px;
		    border: 1px solid #F1F1F1;
		    font-size: 13px;
		    font-weight: 600;
		    font-family: var(--fn-open);
		}
		.paginations li.cut{
		    border: 0;
		}
		.paginations li a{
		    display: flex;
		    justify-content: center;
		    align-items: center;
		    width: 100%;
		    height: 100%;
		    color: #333;
		    border-radius: 8px;
		    text-decoration: none;
		}
		.paginations li.active a{
		    color: #fff;
		    background-color: #0575E6;
		}
	</style>
    <body class="sb-nav-fixed">
        <%@include file="./navigation.jsp" %>
        <div id="layoutSidenav">
	        <div id="layoutSidenav_nav">
				<%@include file="./gnb.jsp" %>
			</div>
			
			<div id="layoutSidenav_content">
				<main class="contents">
					<h2 class="contents-title">참가팀 리스트</h2>
					<div class="contents-box">
						<div class="card">
						    <div class="card-body">
							    <div class="search-form">
							    	<form action="" id="search_fm" name="search_fm" method="get" class="search-box">

								    	<input type="text" id="search_text" name="search_text" value="${pictVO.search_text}" class="input" placeholder="검색어를 입력하세요." autocomplete="off">
								    	<button type="button" onclick="search();" class="btn"><i class="fa-solid fa-magnifying-glass"></i></button>
							    	</form>
							    </div>
						    	<div class="tbl-basic tbl-hover">
							        <table style="text-align : left">
							        	<colgroup>
							        		<col style="width:10%;">
							        		<col style="width:10%;">
							        		<col style="width:10%;">
							        		<col style="width:15%;">
							        		<col style="width:25%;">
							        		<col style="width:10%;">
							        		<col style="width:20%;">
							        	</colgroup>
							            <thead>
							                <tr class="thead">
							                    <th>순서</th>
							                    <th>과제</th>
							                    <th>지역</th>
							                    <th>팀명</th>
							                    <th>과제명</th>
							                    <th>수상</th>
							                    <th>등록일</th>
							                </tr>
							            </thead>
							            <tbody>
								            <c:forEach var="resultList" items="${resultList}" varStatus="status">
								                <tr>
							                    	<td>${status.count}</td>
							                    	<td>
							                    		<c:if test="${resultList.assignment_id eq '1'}">자유과제</c:if>
							                    		<c:if test="${resultList.assignment_id eq '2'}">지정과제1</c:if>
							                    		<c:if test="${resultList.assignment_id eq '3'}">지정과제2</c:if>
													</td>
													<td>${resultList.local}</td>
							                    	<td class="opt-tl"><a href="javascript:void(0);" onclick="board_mod('${resultList.idx}');" class="link">${resultList.title}</a></td>
							                    	<td class="opt-tl"><a href="javascript:void(0);" onclick="board_mod('${resultList.idx}');" class="link">${resultList.assignment_name}</a></td>
							                    	<td>${resultList.award}</td>
							                    	<td>${resultList.reg_date}</td>
								                </tr>
							                </c:forEach>
							            </tbody>
						            </table>
				            	</div>
				            	<ul class="paginations">
									<c:if test="${pictVO.pageNumber ne 1}">
										<li><a href="/team/team_list.do?search_text=${param.search_text}&pageNumber=1"><img src="/front_img/First.png" alt=""></a></li>
										<li><a href="/team/team_list.do?search_text=${param.search_text}&pageNumber=${pictVO.pageNumber - 10 < 1 ? 1 : pictVO.pageNumber - 10}"><img src="/front_img/Prev.png" alt=""></a></li>
									</c:if>	
								
									<c:forEach var="i" begin="${pictVO.startPage}" end="${pictVO.endPage}">
										<c:if test="${i eq pictVO.pageNumber}">
											<li class="active"><a href="/team/team_list.do?search_text=${param.search_text}&pageNumber=${i}" >${i}</a></li>
										</c:if>
										<c:if test="${i ne pictVO.pageNumber}">
											<li><a href="/team/team_list.do?search_text=${param.search_text}&pageNumber=${i}" >${i}</a></li>
										</c:if>
									</c:forEach>	
							
									<c:if test="${pictVO.lastPage ne pictVO.pageNumber}">
										<li><a href="/team/team_list.do?search_text=${param.search_text}&pageNumber=${pictVO.pageNumber + 10 > pictVO.lastPage ?  pictVO.lastPage : pictVO.pageNumber + 10}"><img src="/front_img/Next.png" alt=""></a></li>
										<li><a href="/team/team_list.do?search_text=${param.search_text}&pageNumber=${pictVO.lastPage}"><img src="/front_img/Last.png" alt=""></a></li>
									</c:if>
								</ul>
				            </div>
			            </div>
		            </div>
				</main>
			</div>
		</div>

		<script>
			function board_mod(idx){
				location.href= "/team/team_register.do?idx="+ idx;
			}
			
			function search(){
				$("#search_fm").attr("action", "/team/team_list.do");
				$("#search_fm").submit();
			}
		</script>
            
		<script src="../../../../../js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
		<script src="../../../../../js/scripts.js"></script>
		<script src="../../../../../js/Chart.min.js" crossorigin="anonymous"></script>
		<script src="../../../../../js/simple-datatables@latest.js" crossorigin="anonymous"></script>
		
    </body>
</html>
