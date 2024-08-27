<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>



<!DOCTYPE html>
<html lang="ko">
	<c:import url="../audit/include/head.jsp">
    	<c:param name="pageTitle" value="제11회 대한민국 SW융합 해커톤 대회 심사플랫폼"/>
    </c:import>
    <style>
	    /* 프린트용 스타일 */
	    
		@page {
		    size: A4;
		}
	    @media print {
	    	.print-contents{
		        width: 210mm;
		        height: 297mm;
		       	padding: 0;
		       	margin: 0;
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
			.resultContainer > p{
			    font-size: 22px;
			}
			.resultBox > p{
			    font-size: 14px;
			}
			.textLists li p{
			    min-width: 50px;
			    font-size: 12px;
			}
			.textLists li span{
			    font-size: 12px;
			}
			.resultHead li{
			    padding-right: 10px;
			    font-size: 14px;
			}
			.resultBody li p{
			    padding-right: 10px;
			    font-size: 12px;
			}
	    }
    </style>
    <body class="print">
        <%@include file="../audit/include/header_print.jsp" %>
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
	                	<c:if test="${pictVO.assignment_id eq '1,3'}">
				         	자유과제, 지정과제2
					    </c:if>
					    <c:if test="${pictVO.assignment_id eq '2'}">
				         	지정과제1
					    </c:if>
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