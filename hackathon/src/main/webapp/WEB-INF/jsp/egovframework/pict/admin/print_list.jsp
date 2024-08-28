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
	    @media print {
            body { margin: 0; padding: 0; }
            header { display: none; }
            .headerInner { padding: 0 10px; }
            .headerTitles h1 { max-width: 180px; }
            .headerTitles p { font-size: 18px; }
            .resultContainer { width: 100%; margin: 0; }
            .signImg { height: 100px; }
            .print-page {
                width: 210mm;
                height: 297mm;
                margin: 0;
                padding: 10mm;
                box-sizing: border-box;
                page-break-after: always;
            }
            .resultInfo, .resultListsWrap { 
                background: #F3F5F6 !important; 
                padding: 10px;
            }
            .printButton { display: none; }
            .resultContainer > p { font-size: 22px; }
            .resultBox > p { font-size: 14px; }
            .textLists li p {
                padding: 4px 0;
                min-width: 40px;
                font-size: 12px;
                white-space: nowrap;
            }
            .textLists li span { font-size: 12px; }
            .resultHead, .resultBody li {
                grid-template-columns: 5% 22% 10% 15% 11% 11% 11% 11%;
            }
            .resultHead li, .resultBody li p {
                padding-right: 10px;
                font-size: 12px;
            }
            .page-break { 
                page-break-before: always; 
                height: 0;
                margin: 0;
                border: 0;
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
	                <li>과제명</li>
	                <li>팀명</li>
	                <li>사업화 가능성(30)</li>
	                <li>기술성(30)</li>
	                <li>독창성(20)</li>
	                <li>적합성(20)</li>
	                <li>합계(100)</li>
	            </ul>
	            <ul class="resultBody"  id="paginatedContent">
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


            function prepareForPrint() {
                const container = document.getElementById('print-contents');
                const resultInfo = document.querySelector('.resultInfo');
                const resultBody = document.querySelector('.resultBody');
                const items = resultBody.querySelectorAll('li');
                
                container.style.display = 'none';
                
                // 새로운 프린트용 컨테이너
                const printContainer = document.createElement('div');
                printContainer.id = 'print-container';
                document.body.appendChild(printContainer);
                
                // 페이지 나누기
                const itemsPerPage = 7;
                for (let i = 0; i < items.length; i += itemsPerPage) {
                    // 페이지 나누기
                    if (i > 0) {
                        const pageBreak = document.createElement('div');
                        pageBreak.className = 'page-break';
                        printContainer.appendChild(pageBreak);
                    }

                    const page = document.createElement('div');
                    page.className = 'print-page';
                    
                    // resultInfo 
                    const infoClone = resultInfo.cloneNode(true);
                    page.appendChild(infoClone);
                    
                    // resultListsWrap 
                    const listsWrap = document.createElement('div');
                    listsWrap.className = 'resultListsWrap';
                    
                    // resultHead 
                    const headClone = document.querySelector('.resultHead').cloneNode(true);
                    listsWrap.appendChild(headClone);
                    
                    // resultBody 
                    const bodyClone = document.createElement('ul');
                    bodyClone.className = 'resultBody';
                    for (let j = i; j < i + itemsPerPage && j < items.length; j++) {
                        bodyClone.appendChild(items[j].cloneNode(true));
                    }
                    listsWrap.appendChild(bodyClone);
                    
                    page.appendChild(listsWrap);
                    printContainer.appendChild(page);
                }
            }

            function cleanupAfterPrint() {
                const printContainer = document.getElementById('print-container');
                if (printContainer) {
                    printContainer.remove();
                }
                document.getElementById('print-contents').style.display = '';
            }

            window.onbeforeprint = prepareForPrint;
            window.onafterprint = cleanupAfterPrint;

            document.querySelector('.printButton a').addEventListener('click', function(e) {
                e.preventDefault();
                window.print();
            });

		</script>
    </body>
</html>