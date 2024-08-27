<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>



<!DOCTYPE html>
<html lang="ko">
	<c:import url="./header.jsp">
    	<c:param name="pageTitle" value="게시물 리스트"/>
    </c:import>
    <style>
	    /* 프린트용 스타일 */
	    @media print {
	        #layoutSidenav_nav, .contents-title, .sb-topnav {
	            display: none;
	        }
	        .sb-nav-fixed #layoutSidenav #layoutSidenav_content {
			    padding-left: 10px;
			}
	        .contents-box{
	       		width: 100%;
	       		padding: 0;
	       		background: #fff;
	       	}
	       	#layoutSidenav_content{
	       		width: 100%;
	       	}
	       	.contents{
	       		width: 100%;
	       	}
			.resultInfo{
			    background: #F3F5F6 !important;
			}
			.resultListsWrap{
			    background: #F3F5F6 !important;
			}
			.printButton{
				display: none;
			}
			.card-body{
				flex: unset;
			}
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
					<h2 class="contents-title">심사결과 리스트</h2>
					<div class="contents-box">
						<div class="card">
						    <div class="card-body">
					    	    <div class="resultContainer" id="print-contents">
							        <p><span>제11회 대한민국 SW융합 해커톤 대회 발표평가 </span>개별 평가 서류</p>
							        <div class="resultInfo">
							            <div class="resultBox">
							                <p>심사위원</p>
							                <ul class="textLists">
							                    <li><p>소속</p><span>${pictVO.company}</span></li>
							                    <li><p>직위</p><span>${pictVO.depart}</span></li>
							                    <li><p>성명</p><span>${pictVO.name}</span></li>
							                </ul>
							            </div>
							            <div class="resultBox">
							                <p>심사대상</p>
							                <ul class="textLists">
							                	<li><p>참가구분</p><span>
							                	<c:set var="text" value="${fn:split(pictVO.assignment_id,',')}" />
											    <c:forEach var="textValue" items="${text}" varStatus="varStatus">
												    <c:if test="${textValue eq '1' || textValue eq 1}">
											         	자유과제
												    </c:if>
												    <c:if test="${textValue eq '2' || textValue eq 2}">
											         	, 지정과제1
												    </c:if>
												    <c:if test="${textValue eq '3' || textValue eq 3}">
											         	, 지정과제2
												    </c:if>
											    </c:forEach>
							                    </span></li>
							                    <li><p>평가일자</p><span>2024-08-25</span></li>
							                </ul>
							            </div>
							            <div class="resultBox">
							                <p>본인확인 서명</p>
							                <div class="signImg">
							                    <img src="${pictVO.file_url }" alt="">
							                </div>
							            </div>
							        </div>
							        <div class="resultListsWrap">
							            <ul class="resultHead">
							                <li>순서</li>
							                <li>제안명</li>
							                <li>팀명</li>
							                <li>사업화 가능성(30)</li>
							                <li>기술성(30)</li>
							                <li>독창성(20)</li>
							                <li>적합성(20)</li>
							                <li>합계(100)</li>
							            </ul>
							            <ul class="resultBody">
							            	<c:forEach var="reference_list" items="${reference_list}" varStatus="status">
								                <li>
								                    <p>${status.count }</p>
								                    <p>${reference_list.assignment_name}</p>
								                    <p>${reference_list.title}</p>
								                    <p>${reference_list.point_1}</p>
								                    <p>${reference_list.point_2}</p>
								                    <p>${reference_list.point_3}</p>
								                    <p>${reference_list.point_4}</p>
								                    <p>${reference_list.point_1 + reference_list.point_2 + reference_list.point_3 + reference_list.point_4}</p>
								                </li>
							                </c:forEach>
							            </ul>
							        </div>
							        <div class="printButton">
							            <a href="#lnk"><img src="/front_img/print.png" alt="">개별 평가지 인쇄</a>
							        </div>
							        <!-- <div class="printButton back">
							            <a href="#lnk">목록으로</a>
							        </div> -->
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

			function board_mod(idx){
				location.href= "/board/board_register.do?idx="+ idx;
			}
			function board_list(){
				location.href= "/board/board_list.do";
			}
			function board_delete(idx) {
				if (confirm("삭제 하시겠습니까?")) {
					$('#idx').val(idx)
					$("#register").attr("action", "/board/board_delete.do");
					$("#register").submit();
				}
			}
			
			function search(){
				$("#search_fm").attr("action", "/board/board_list.do");
				$("#search_fm").submit();
			}
		</script>
            
		<script src="../../../../../js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
		<script src="../../../../../js/scripts.js"></script>
		<script src="../../../../../js/Chart.min.js" crossorigin="anonymous"></script>
		<script src="../../../../../js/simple-datatables@latest.js" crossorigin="anonymous"></script>
		
    </body>
</html>